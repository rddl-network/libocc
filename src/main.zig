// Modules
const std = @import("std");
const zig_serial = @import("serial.zig");

// Definitions
const ArrayListEncoded = std.ArrayList;
const ArrayListSlipEncoded = std.ArrayList;
const ArrayListUnecoded = std.ArrayList;
const ArrayListDecoded = std.ArrayList;

const SLIP_END: u8 = 0xC0;
const SLIP_ESC: u8 = 0xDB;
const SLIP_ESC_END: u8 = 0xDC;
const SLIP_ESC_ESC: u8 = 0xDD;

// Timer definitions for delays
const ns_per_us: u64 = 1000;
const ns_per_ms: u64 = 8000 * ns_per_us;

// Functions
export fn occ_do(data: [*]const u8, length: usize, outBuffer: [*]u8, outBufferSize: usize, buffer_delay_ms: usize, portName: [*]const u8, portNameLength: usize) usize {
    std.debug.print("unable to open file: {}\n", .{buffer_delay_ms});
    // Create an ArrayList and add data to it
    var payloadUnencoded = ArrayListUnecoded(u8).init(std.heap.page_allocator);
    defer payloadUnencoded.deinit();

    var payLoadSlipEncoded = ArrayListSlipEncoded(u8).init(std.heap.page_allocator);
    defer payLoadSlipEncoded.deinit();

    for (data[0..length], 0..) |byte, index| {
        payloadUnencoded.append(byte) catch |err| {
            std.debug.print("unable to turn paylaod into array: {}\n", .{err});
        };
        std.debug.print("Byte {} = {}\n", .{ index, byte });
    }
    const serial = std.fs.cwd().openFile(portName[0..portNameLength], .{ .mode = .read_write }) catch |err| label: {
        std.debug.print("unable to open file: {}\n", .{err});
        const stderr = std.io.getStdErr();
        break :label stderr;
    };
    std.debug.print("serial connected to port {*}\n", .{portName});
    defer serial.close();

    const SerialConfig = zig_serial.SerialConfig{
        .handshake = .none,
        .baud_rate = 115200,
        .parity = .none,
        .word_size = 8,
        .stop_bits = .one,
    };

    zig_serial.configureSerialPort(serial, SerialConfig) catch |err| {
        std.debug.print("Error configuring serial port: {}\n", .{err});
    };

    var slipMsgFramer: u8 = 0;

    encodeSLIP(&payloadUnencoded, &payLoadSlipEncoded) catch |err| {
        std.debug.print("unable to encode SLIP: {}\n", .{err});
    };

    // turn back payload unencoded into a slice to print to serial
    const payloadUnSlice: []const u8 = payLoadSlipEncoded.items;

    // serial.writer().writeAll(data[0..length]) catch |err| {
    serial.writer().writeAll(payloadUnSlice) catch |err| {
        std.debug.print("unable to open file: {}\n", .{err});
    };

    std.time.sleep(buffer_delay_ms * std.time.ns_per_ms); // Adding a 10ms delay before retrying

    var payLoadEncoded = ArrayListEncoded(u8).init(std.heap.page_allocator);
    defer payLoadEncoded.deinit();

    while (true) {
        var buf: [1]u8 = undefined;

        const bytesRead = serial.reader().read(&buf) catch {
            std.time.sleep(10 * std.time.ns_per_ms); // Adding a 10ms delay before retrying
            continue;
        };

        if (bytesRead == 0) break; // EOF or no more data

        const byte: u8 = buf[0];

        // Convert byte to hex and store in buffer
        payLoadEncoded.append(byte) catch continue;

        if (byte == 0xc0) {
            if (slipMsgFramer == 1) {
                // Convert buffer to string and print
                const stringSlice: []const u8 = payLoadEncoded.items; // This creates a slice of type []const u8
                std.debug.print("Hex String: {s}\n", .{stringSlice});
                break;
            } else {
                slipMsgFramer += 1;
            }
        }
        std.time.sleep(1 * std.time.ns_per_ms);
    }

    zig_serial.flushSerialPort(serial, true, true) catch |err| {
        std.debug.print("Can't flush serial port: {}\n", .{err});
    };

    decodeSLIP(&payLoadEncoded) catch |err| {
        std.debug.print("unable to decode SLIP: {}\n", .{err});
    };

    const returnLength = @min(payLoadEncoded.items.len, outBufferSize);
    std.mem.copy(u8, outBuffer[0..returnLength], payLoadEncoded.items[0..returnLength]);

    return returnLength;
}

pub fn encodeSLIP(payLoadUnencoded: *ArrayListEncoded(u8), payLoadSlipEncoded: *ArrayListEncoded(u8)) !void {
    var count: usize = 0;
    for (payLoadUnencoded.items) |byte| {
        if (byte == SLIP_END) {
            count += 2; // Escape character and replaced character
        } else {
            count += 1;
        }
    }

    var allocator = std.heap.page_allocator;
    var slipAPDU = try allocator.alloc(u8, count);
    defer allocator.free(slipAPDU);

    var index: usize = 0;
    for (payLoadUnencoded.items) |byte| {
        if (byte == SLIP_END) {
            slipAPDU[index] = SLIP_ESC; // Escape character
            index += 1;
            slipAPDU[index] = SLIP_ESC_END; // Replaced character
        } else if (byte == SLIP_ESC) {
            slipAPDU[index] = SLIP_ESC; // Escape character
            index += 1;
            slipAPDU[index] = SLIP_ESC_ESC; // Replaced character
        } else {
            slipAPDU[index] = byte;
        }
        index += 1;
    }

    var slipFrame = try allocator.alloc(u8, slipAPDU.len + 2);
    slipFrame[0] = 0xc0;
    std.mem.copy(u8, slipFrame[1 .. 1 + slipAPDU.len], slipAPDU); // Copying apdu
    slipFrame[1 + slipAPDU.len] = 0xC0; // Suffix byte

    for (slipFrame) |byte| {
        payLoadSlipEncoded.append(byte) catch |err| {
            std.debug.print("unable to encode SLIP: {}\n", .{err});
        };
        std.debug.print("{x} ", .{byte});
    }
    std.debug.print("\n", .{});
}

pub fn decodeSLIP(payLoadEncoded: *ArrayListEncoded(u8)) !void {

    // Remove the last element
    // Check if the list is empty before popping
    if (payLoadEncoded.items.len == 0) {
        std.debug.print("payLoadEncoded is empty, cannot pop\n", .{});
    } else {
        _ = payLoadEncoded.pop();
    }

    // Remove the first element
    if (payLoadEncoded.items.len > 0) {
        std.mem.copy(u8, payLoadEncoded.items[0..], payLoadEncoded.items[1..]);
        payLoadEncoded.items.len -= 1;
    }

    var payLoadDecoded = ArrayListDecoded(u8).init(std.heap.page_allocator);
    defer payLoadDecoded.deinit();

    var esc: bool = false;
    for (payLoadEncoded.items) |byte| {
        if (byte == SLIP_ESC_END and esc) {
            try payLoadDecoded.append(SLIP_END);
            esc = false;
        } else if (byte == SLIP_ESC_ESC and esc) {
            try payLoadDecoded.append(SLIP_ESC);
            esc = false;
        } else if (byte == SLIP_ESC) {
            esc = true;
        } else {
            try payLoadDecoded.append(byte);
        }
    }

    // Convert ArrayList to string and print
    const stringSlice: []const u8 = payLoadDecoded.items; // This creates a slice of type []const u8
    std.debug.print("\nHex String: {s}\n\n", .{stringSlice});
}
