
''' zig build-lib -dynamic -O ReleaseSafe pyocc.zig '''

from osc4py3.oscbuildparse import *
from osc4py3 import oscmethod

import ctypes

# Load the shared library
occ = ctypes.CDLL('./libpyocc.dylib')

# Define the Zig function prototype
# Assuming your Zig function now looks like this:
# export fn occ_do(data: [*]const u8, length: usize, outBuffer: [*]u8, outBufferSize: usize) usize;
occ.occ_do.argtypes = [ctypes.POINTER(ctypes.c_ubyte), ctypes.c_size_t, ctypes.POINTER(ctypes.c_ubyte), ctypes.c_size_t, ctypes.c_size_t]
occ.occ_do.restype = ctypes.c_size_t

# Prepare the occ messages. 

# msg = OSCMessage('/IHW/bip39Mnemonic', ',is', [0, ""])
msg = OSCMessage('/IHW/bip32_key_serialize', ',ssiis', ["3cb85c097bc8da4d68d7dda48ad7d9b1af9adeb87627e633f1509e7b9b0ada15eb98353b68699a411e535a631b73a5168528509d49cb3c5d5c570e7b8ccb8333", "m/44h/84h/1h/0h", 0, 0, ""])

input_data=encode_packet(msg)
print(input_data)

input_ptr = (ctypes.c_ubyte * len(input_data))(*input_data)

# Prepare the output buffer
output_buffer_size = 1024  # Choose an appropriate size
output_buffer = (ctypes.c_ubyte * output_buffer_size)()
buffer_delay_ms = 200 # reading from input buffer delay in ms
# Call the function

output_length = occ.occ_do(input_ptr, len(input_data), output_buffer, output_buffer_size, buffer_delay_ms)

# Access the returned data
returned_data = bytes(output_buffer[:output_length])
print("Returned Data:", returned_data)
