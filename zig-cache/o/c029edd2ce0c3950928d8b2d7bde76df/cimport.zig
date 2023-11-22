pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const tcflag_t = c_ulong;
pub const cc_t = u8;
pub const speed_t = c_ulong;
pub const struct_termios = extern struct {
    c_iflag: tcflag_t,
    c_oflag: tcflag_t,
    c_cflag: tcflag_t,
    c_lflag: tcflag_t,
    c_cc: [20]cc_t,
    c_ispeed: speed_t,
    c_ospeed: speed_t,
};
pub extern fn cfgetispeed([*c]const struct_termios) speed_t;
pub extern fn cfgetospeed([*c]const struct_termios) speed_t;
pub extern fn cfsetispeed([*c]struct_termios, speed_t) c_int;
pub extern fn cfsetospeed([*c]struct_termios, speed_t) c_int;
pub extern fn tcgetattr(c_int, [*c]struct_termios) c_int;
pub extern fn tcsetattr(c_int, c_int, [*c]const struct_termios) c_int;
pub extern fn tcdrain(c_int) c_int;
pub extern fn tcflow(c_int, c_int) c_int;
pub extern fn tcflush(c_int, c_int) c_int;
pub extern fn tcsendbreak(c_int, c_int) c_int;
pub extern fn cfmakeraw([*c]struct_termios) void;
pub extern fn cfsetspeed([*c]struct_termios, speed_t) c_int;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_longlong;
pub const __uint64_t = c_ulonglong;
pub const __darwin_intptr_t = c_long;
pub const __darwin_natural_t = c_uint;
pub const __darwin_ct_rune_t = c_int;
pub const __mbstate_t = extern union {
    __mbstate8: [128]u8,
    _mbstateL: c_longlong,
};
pub const __darwin_mbstate_t = __mbstate_t;
pub const __darwin_ptrdiff_t = c_long;
pub const __darwin_size_t = c_ulong;
pub const __builtin_va_list = [*c]u8;
pub const __darwin_va_list = __builtin_va_list;
pub const __darwin_wchar_t = c_int;
pub const __darwin_rune_t = __darwin_wchar_t;
pub const __darwin_wint_t = c_int;
pub const __darwin_clock_t = c_ulong;
pub const __darwin_socklen_t = __uint32_t;
pub const __darwin_ssize_t = c_long;
pub const __darwin_time_t = c_long;
pub const __darwin_blkcnt_t = __int64_t;
pub const __darwin_blksize_t = __int32_t;
pub const __darwin_dev_t = __int32_t;
pub const __darwin_fsblkcnt_t = c_uint;
pub const __darwin_fsfilcnt_t = c_uint;
pub const __darwin_gid_t = __uint32_t;
pub const __darwin_id_t = __uint32_t;
pub const __darwin_ino64_t = __uint64_t;
pub const __darwin_ino_t = __darwin_ino64_t;
pub const __darwin_mach_port_name_t = __darwin_natural_t;
pub const __darwin_mach_port_t = __darwin_mach_port_name_t;
pub const __darwin_mode_t = __uint16_t;
pub const __darwin_off_t = __int64_t;
pub const __darwin_pid_t = __int32_t;
pub const __darwin_sigset_t = __uint32_t;
pub const __darwin_suseconds_t = __int32_t;
pub const __darwin_uid_t = __uint32_t;
pub const __darwin_useconds_t = __uint32_t;
pub const __darwin_uuid_t = [16]u8;
pub const __darwin_uuid_string_t = [37]u8;
pub const struct___darwin_pthread_handler_rec = extern struct {
    __routine: ?*const fn (?*anyopaque) callconv(.C) void,
    __arg: ?*anyopaque,
    __next: [*c]struct___darwin_pthread_handler_rec,
};
pub const struct__opaque_pthread_attr_t = extern struct {
    __sig: c_long,
    __opaque: [56]u8,
};
pub const struct__opaque_pthread_cond_t = extern struct {
    __sig: c_long,
    __opaque: [40]u8,
};
pub const struct__opaque_pthread_condattr_t = extern struct {
    __sig: c_long,
    __opaque: [8]u8,
};
pub const struct__opaque_pthread_mutex_t = extern struct {
    __sig: c_long,
    __opaque: [56]u8,
};
pub const struct__opaque_pthread_mutexattr_t = extern struct {
    __sig: c_long,
    __opaque: [8]u8,
};
pub const struct__opaque_pthread_once_t = extern struct {
    __sig: c_long,
    __opaque: [8]u8,
};
pub const struct__opaque_pthread_rwlock_t = extern struct {
    __sig: c_long,
    __opaque: [192]u8,
};
pub const struct__opaque_pthread_rwlockattr_t = extern struct {
    __sig: c_long,
    __opaque: [16]u8,
};
pub const struct__opaque_pthread_t = extern struct {
    __sig: c_long,
    __cleanup_stack: [*c]struct___darwin_pthread_handler_rec,
    __opaque: [8176]u8,
};
pub const __darwin_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const __darwin_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const __darwin_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const __darwin_pthread_key_t = c_ulong;
pub const __darwin_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const __darwin_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const __darwin_pthread_once_t = struct__opaque_pthread_once_t;
pub const __darwin_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const __darwin_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const __darwin_pthread_t = [*c]struct__opaque_pthread_t;
pub const struct_winsize = extern struct {
    ws_row: c_ushort,
    ws_col: c_ushort,
    ws_xpixel: c_ushort,
    ws_ypixel: c_ushort,
};
pub const __darwin_nl_item = c_int;
pub const __darwin_wctrans_t = c_int;
pub const __darwin_wctype_t = __uint32_t;
pub const pid_t = __darwin_pid_t;
pub extern fn tcgetsid(c_int) pid_t;
pub const __block = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):27:9
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):82:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):88:9
pub const __FLT16_DENORM_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):111:9
pub const __FLT16_EPSILON__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):115:9
pub const __FLT16_MAX__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):121:9
pub const __FLT16_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):124:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // (no file):184:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):206:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // (no file):214:9
pub const __USER_LABEL_PREFIX__ = @compileError("unable to translate macro: undefined identifier `_`"); // (no file):305:9
pub const __nonnull = @compileError("unable to translate macro: undefined identifier `_Nonnull`"); // (no file):336:9
pub const __null_unspecified = @compileError("unable to translate macro: undefined identifier `_Null_unspecified`"); // (no file):337:9
pub const __nullable = @compileError("unable to translate macro: undefined identifier `_Nullable`"); // (no file):338:9
pub const __weak = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):382:9
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:113:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:114:9
pub const __const = @compileError("unable to translate C expr: unexpected token 'const'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:116:9
pub const __volatile = @compileError("unable to translate C expr: unexpected token 'volatile'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:118:9
pub const __dead2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:162:9
pub const __pure2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:163:9
pub const __stateful_pure = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:164:9
pub const __unused = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:169:9
pub const __used = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:174:9
pub const __cold = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:180:9
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__attribute`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:187:9
pub const __exported = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:197:9
pub const __exported_push = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:198:9
pub const __exported_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:199:9
pub const __deprecated = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:211:9
pub const __deprecated_msg = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:215:10
pub const __kpi_deprecated = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:226:9
pub const __unavailable = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:232:9
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:254:9
pub const __disable_tail_calls = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:287:9
pub const __not_tail_called = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:299:9
pub const __result_use_check = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:310:9
pub const __swift_unavailable = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:320:9
pub const __header_inline = @compileError("unable to translate C expr: unexpected token 'inline'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:354:10
pub const __header_always_inline = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:367:10
pub const __unreachable_ok_push = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:380:10
pub const __unreachable_ok_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:383:10
pub const __printflike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:404:9
pub const __printf0like = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:406:9
pub const __scanflike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:408:9
pub const __osloglike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:410:9
pub const __IDSTRING = @compileError("unable to translate C expr: unexpected token 'static'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:413:9
pub const __COPYRIGHT = @compileError("unable to translate macro: undefined identifier `copyright`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:416:9
pub const __RCSID = @compileError("unable to translate macro: undefined identifier `rcsid`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:420:9
pub const __SCCSID = @compileError("unable to translate macro: undefined identifier `sccsid`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:424:9
pub const __PROJECT_VERSION = @compileError("unable to translate macro: undefined identifier `project_version`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:428:9
pub const __FBSDID = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:433:9
pub const __DECONST = @compileError("unable to translate C expr: unexpected token 'const'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:437:9
pub const __DEVOLATILE = @compileError("unable to translate C expr: unexpected token 'volatile'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:441:9
pub const __DEQUALIFY = @compileError("unable to translate C expr: unexpected token 'const'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:445:9
pub const __alloc_size = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:463:9
pub const __DARWIN_ALIAS = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:648:9
pub const __DARWIN_ALIAS_C = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:649:9
pub const __DARWIN_ALIAS_I = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:650:9
pub const __DARWIN_NOCANCEL = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:651:9
pub const __DARWIN_INODE64 = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:652:9
pub const __DARWIN_1050 = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:654:9
pub const __DARWIN_1050ALIAS = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:655:9
pub const __DARWIN_1050ALIAS_C = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:656:9
pub const __DARWIN_1050ALIAS_I = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:657:9
pub const __DARWIN_1050INODE64 = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:658:9
pub const __DARWIN_EXTSN = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:660:9
pub const __DARWIN_EXTSN_C = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:661:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:35:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:41:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:47:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:53:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:59:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:65:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:71:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:77:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:83:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:89:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:95:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:101:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:107:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:113:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:119:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:125:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:131:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:137:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:143:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:149:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_4 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:155:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:161:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:167:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:173:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:179:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:185:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:191:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:197:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:203:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:209:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:215:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:221:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:227:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_4 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:233:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:239:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:245:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:251:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:257:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_4 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:263:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:269:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:275:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:281:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:287:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_4 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:293:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_5 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:299:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_6 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:305:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_7 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:311:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:317:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:323:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:329:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:335:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_5 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:341:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:347:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:353:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:359:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:365:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_4 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:371:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:377:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:383:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:389:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:395:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_4 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:401:9
pub const __DARWIN_ALIAS_STARTING_MAC___MAC_13_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:671:9
pub const __DARWIN_ALIAS_STARTING = @compileError("unable to translate macro: undefined identifier `__DARWIN_ALIAS_STARTING_MAC_`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:671:9
pub const __POSIX_C_DEPRECATED = @compileError("unable to translate macro: undefined identifier `___POSIX_C_DEPRECATED_STARTING_`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:734:9
pub const __CAST_AWAY_QUALIFIER = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:832:9
pub const __XNU_PRIVATE_EXTERN = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:846:9
pub const __counted_by = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:860:9
pub const __sized_by = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:861:9
pub const __ended_by = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:862:9
pub const __terminated_by = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:863:9
pub const __ptrcheck_abi_assume_single = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:873:9
pub const __ptrcheck_abi_assume_unsafe_indexable = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:874:9
pub const __unsafe_terminated_by_from_indexable = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:883:9
pub const __unsafe_null_terminated_from_indexable = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:884:9
pub const __compiler_barrier = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:918:9
pub const __enum_open = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:921:9
pub const __enum_closed = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:922:9
pub const __enum_options = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:929:9
pub const __enum_decl = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:942:9
pub const __enum_closed_decl = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:944:9
pub const __options_decl = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:946:9
pub const __options_closed_decl = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:948:9
pub const __offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h:83:9
pub const TIOCTIMESTAMP = @compileError("unable to translate macro: undefined identifier `timeval`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ttycom.h:156:9
pub const TIOCDCDTIMESTAMP = @compileError("unable to translate macro: undefined identifier `timeval`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ttycom.h:158:9
pub const __strfmonlike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h:31:9
pub const __strftimelike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h:33:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 16);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 6);
pub const __clang_version__ = "16.0.6 ";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Homebrew Clang 16.0.6";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 1);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __BLOCKS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @as(c_int, 128);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_int;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 4.9406564584124654e-324);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 15);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 2.2204460492503131e-16);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 53);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __LDBL_MAX_EXP__ = @as(c_int, 1024);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.7976931348623157e+308);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __LDBL_MIN__ = @as(c_longdouble, 2.2250738585072014e-308);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 8);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __NO_MATH_ERRNO__ = @as(c_int, 1);
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __AARCH64EL__ = @as(c_int, 1);
pub const __aarch64__ = @as(c_int, 1);
pub const __AARCH64_CMODEL_SMALL__ = @as(c_int, 1);
pub const __ARM_ACLE = @as(c_int, 200);
pub const __ARM_ARCH = @as(c_int, 8);
pub const __ARM_ARCH_PROFILE = 'A';
pub const __ARM_64BIT_STATE = @as(c_int, 1);
pub const __ARM_PCS_AAPCS64 = @as(c_int, 1);
pub const __ARM_ARCH_ISA_A64 = @as(c_int, 1);
pub const __ARM_FEATURE_CLZ = @as(c_int, 1);
pub const __ARM_FEATURE_FMA = @as(c_int, 1);
pub const __ARM_FEATURE_LDREX = @as(c_int, 0xF);
pub const __ARM_FEATURE_IDIV = @as(c_int, 1);
pub const __ARM_FEATURE_DIV = @as(c_int, 1);
pub const __ARM_FEATURE_NUMERIC_MAXMIN = @as(c_int, 1);
pub const __ARM_FEATURE_DIRECTED_ROUNDING = @as(c_int, 1);
pub const __ARM_ALIGN_MAX_STACK_PWR = @as(c_int, 4);
pub const __ARM_FP = @as(c_int, 0xE);
pub const __ARM_FP16_FORMAT_IEEE = @as(c_int, 1);
pub const __ARM_FP16_ARGS = @as(c_int, 1);
pub const __ARM_SIZEOF_WCHAR_T = @as(c_int, 4);
pub const __ARM_SIZEOF_MINIMAL_ENUM = @as(c_int, 4);
pub const __ARM_NEON = @as(c_int, 1);
pub const __ARM_NEON_FP = @as(c_int, 0xE);
pub const __ARM_FEATURE_UNALIGNED = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __FP_FAST_FMA = @as(c_int, 1);
pub const __FP_FAST_FMAF = @as(c_int, 1);
pub const __AARCH64_SIMD__ = @as(c_int, 1);
pub const __ARM64_ARCH_8__ = @as(c_int, 1);
pub const __ARM_NEON__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __arm64 = @as(c_int, 1);
pub const __arm64__ = @as(c_int, 1);
pub const __APPLE_CC__ = @as(c_int, 6000);
pub const __APPLE__ = @as(c_int, 1);
pub const __STDC_NO_THREADS__ = @as(c_int, 1);
pub const __strong = "";
pub const __unsafe_unretained = "";
pub const __DYNAMIC__ = @as(c_int, 1);
pub const __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130201, .decimal);
pub const __MACH__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const __TERMIOS_H__ = "";
pub const _CDEFS_H_ = "";
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __P(protos: anytype) @TypeOf(protos) {
    return protos;
}
pub const __signed = c_int;
pub inline fn __deprecated_enum_msg(_msg: anytype) @TypeOf(__deprecated_msg(_msg)) {
    return __deprecated_msg(_msg);
}
pub const __kpi_unavailable = "";
pub const __kpi_deprecated_arm64_macos_unavailable = "";
pub const __dead = "";
pub const __pure = "";
pub const __abortlike = __dead2 ++ __cold ++ __not_tail_called;
pub const __DARWIN_ONLY_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const __DARWIN_ONLY_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_UNIX03 = @as(c_int, 1);
pub const __DARWIN_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_NON_CANCELABLE = @as(c_int, 0);
pub const __DARWIN_SUF_UNIX03 = "";
pub const __DARWIN_SUF_64_BIT_INO_T = "";
pub const __DARWIN_SUF_1050 = "";
pub const __DARWIN_SUF_NON_CANCELABLE = "";
pub const __DARWIN_SUF_EXTSN = "$DARWIN_EXTSN";
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_0(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_2(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_3(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_4(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_5(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_6(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_7(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_8(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_9(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_2(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_3(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_2(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_3(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_4(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_2(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_4(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_2(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_4(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_4(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_5(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_6(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_4(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_16(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_0(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_3(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_0(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_2(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_3(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_0(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_2(x: anytype) @TypeOf(x) {
    return x;
}
pub const ___POSIX_C_DEPRECATED_STARTING_198808L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199009L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199209L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199309L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199506L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200112L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200809L = "";
pub const __DARWIN_C_ANSI = @as(c_long, 0o10000);
pub const __DARWIN_C_FULL = @as(c_long, 900000);
pub const __DARWIN_C_LEVEL = __DARWIN_C_FULL;
pub const __STDC_WANT_LIB_EXT1__ = @as(c_int, 1);
pub const __DARWIN_NO_LONG_LONG = @as(c_int, 0);
pub const _DARWIN_FEATURE_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_VERS_1050 = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const _DARWIN_FEATURE_UNIX_CONFORMANCE = @as(c_int, 3);
pub const __has_ptrcheck = @as(c_int, 0);
pub const __single = "";
pub const __unsafe_indexable = "";
pub const __null_terminated = "";
pub inline fn __unsafe_forge_bidi_indexable(T: anytype, P: anytype, S: anytype) @TypeOf(T(P)) {
    _ = @TypeOf(S);
    return T(P);
}
pub const __unsafe_forge_single = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub inline fn __terminated_by_to_indexable(P: anytype) @TypeOf(P) {
    return P;
}
pub inline fn __unsafe_terminated_by_to_indexable(P: anytype) @TypeOf(P) {
    return P;
}
pub inline fn __null_terminated_to_indexable(P: anytype) @TypeOf(P) {
    return P;
}
pub inline fn __unsafe_null_terminated_to_indexable(P: anytype) @TypeOf(P) {
    return P;
}
pub const __array_decay_dicards_count_in_parameters = "";
pub const __unsafe_late_const = "";
pub const __ASSUME_PTR_ABI_SINGLE_BEGIN = __ptrcheck_abi_assume_single();
pub const __ASSUME_PTR_ABI_SINGLE_END = __ptrcheck_abi_assume_unsafe_indexable();
pub const __header_indexable = "";
pub const __header_bidi_indexable = "";
pub const __kernel_ptr_semantics = "";
pub const __kernel_data_semantics = "";
pub const __kernel_dual_semantics = "";
pub const _SYS_TERMIOS_H_ = "";
pub const VEOF = @as(c_int, 0);
pub const VEOL = @as(c_int, 1);
pub const VEOL2 = @as(c_int, 2);
pub const VERASE = @as(c_int, 3);
pub const VWERASE = @as(c_int, 4);
pub const VKILL = @as(c_int, 5);
pub const VREPRINT = @as(c_int, 6);
pub const VINTR = @as(c_int, 8);
pub const VQUIT = @as(c_int, 9);
pub const VSUSP = @as(c_int, 10);
pub const VDSUSP = @as(c_int, 11);
pub const VSTART = @as(c_int, 12);
pub const VSTOP = @as(c_int, 13);
pub const VLNEXT = @as(c_int, 14);
pub const VDISCARD = @as(c_int, 15);
pub const VMIN = @as(c_int, 16);
pub const VTIME = @as(c_int, 17);
pub const VSTATUS = @as(c_int, 18);
pub const NCCS = @as(c_int, 20);
pub const _POSIX_VDISABLE = @import("std").zig.c_translation.cast(u8, '\xff');
pub inline fn CCEQ(val: anytype, c: anytype) @TypeOf(if (c == val) val != _POSIX_VDISABLE else @as(c_int, 0)) {
    return if (c == val) val != _POSIX_VDISABLE else @as(c_int, 0);
}
pub const IGNBRK = @as(c_int, 0x00000001);
pub const BRKINT = @as(c_int, 0x00000002);
pub const IGNPAR = @as(c_int, 0x00000004);
pub const PARMRK = @as(c_int, 0x00000008);
pub const INPCK = @as(c_int, 0x00000010);
pub const ISTRIP = @as(c_int, 0x00000020);
pub const INLCR = @as(c_int, 0x00000040);
pub const IGNCR = @as(c_int, 0x00000080);
pub const ICRNL = @as(c_int, 0x00000100);
pub const IXON = @as(c_int, 0x00000200);
pub const IXOFF = @as(c_int, 0x00000400);
pub const IXANY = @as(c_int, 0x00000800);
pub const IMAXBEL = @as(c_int, 0x00002000);
pub const IUTF8 = @as(c_int, 0x00004000);
pub const OPOST = @as(c_int, 0x00000001);
pub const ONLCR = @as(c_int, 0x00000002);
pub const OXTABS = @as(c_int, 0x00000004);
pub const ONOEOT = @as(c_int, 0x00000008);
pub const OCRNL = @as(c_int, 0x00000010);
pub const ONOCR = @as(c_int, 0x00000020);
pub const ONLRET = @as(c_int, 0x00000040);
pub const OFILL = @as(c_int, 0x00000080);
pub const NLDLY = @as(c_int, 0x00000300);
pub const TABDLY = @as(c_int, 0x00000c04);
pub const CRDLY = @as(c_int, 0x00003000);
pub const FFDLY = @as(c_int, 0x00004000);
pub const BSDLY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00008000, .hexadecimal);
pub const VTDLY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010000, .hexadecimal);
pub const OFDEL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020000, .hexadecimal);
pub const NL0 = @as(c_int, 0x00000000);
pub const NL1 = @as(c_int, 0x00000100);
pub const NL2 = @as(c_int, 0x00000200);
pub const NL3 = @as(c_int, 0x00000300);
pub const TAB0 = @as(c_int, 0x00000000);
pub const TAB1 = @as(c_int, 0x00000400);
pub const TAB2 = @as(c_int, 0x00000800);
pub const TAB3 = @as(c_int, 0x00000004);
pub const CR0 = @as(c_int, 0x00000000);
pub const CR1 = @as(c_int, 0x00001000);
pub const CR2 = @as(c_int, 0x00002000);
pub const CR3 = @as(c_int, 0x00003000);
pub const FF0 = @as(c_int, 0x00000000);
pub const FF1 = @as(c_int, 0x00004000);
pub const BS0 = @as(c_int, 0x00000000);
pub const BS1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00008000, .hexadecimal);
pub const VT0 = @as(c_int, 0x00000000);
pub const VT1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010000, .hexadecimal);
pub const CIGNORE = @as(c_int, 0x00000001);
pub const CSIZE = @as(c_int, 0x00000300);
pub const CS5 = @as(c_int, 0x00000000);
pub const CS6 = @as(c_int, 0x00000100);
pub const CS7 = @as(c_int, 0x00000200);
pub const CS8 = @as(c_int, 0x00000300);
pub const CSTOPB = @as(c_int, 0x00000400);
pub const CREAD = @as(c_int, 0x00000800);
pub const PARENB = @as(c_int, 0x00001000);
pub const PARODD = @as(c_int, 0x00002000);
pub const HUPCL = @as(c_int, 0x00004000);
pub const CLOCAL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00008000, .hexadecimal);
pub const CCTS_OFLOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010000, .hexadecimal);
pub const CRTSCTS = CCTS_OFLOW | CRTS_IFLOW;
pub const CRTS_IFLOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020000, .hexadecimal);
pub const CDTR_IFLOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00040000, .hexadecimal);
pub const CDSR_OFLOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00080000, .hexadecimal);
pub const CCAR_OFLOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00100000, .hexadecimal);
pub const MDMBUF = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00100000, .hexadecimal);
pub const ECHOKE = @as(c_int, 0x00000001);
pub const ECHOE = @as(c_int, 0x00000002);
pub const ECHOK = @as(c_int, 0x00000004);
pub const ECHO = @as(c_int, 0x00000008);
pub const ECHONL = @as(c_int, 0x00000010);
pub const ECHOPRT = @as(c_int, 0x00000020);
pub const ECHOCTL = @as(c_int, 0x00000040);
pub const ISIG = @as(c_int, 0x00000080);
pub const ICANON = @as(c_int, 0x00000100);
pub const ALTWERASE = @as(c_int, 0x00000200);
pub const IEXTEN = @as(c_int, 0x00000400);
pub const EXTPROC = @as(c_int, 0x00000800);
pub const TOSTOP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00400000, .hexadecimal);
pub const FLUSHO = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00800000, .hexadecimal);
pub const NOKERNINFO = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x02000000, .hexadecimal);
pub const PENDIN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hexadecimal);
pub const NOFLSH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal);
pub const TCSANOW = @as(c_int, 0);
pub const TCSADRAIN = @as(c_int, 1);
pub const TCSAFLUSH = @as(c_int, 2);
pub const TCSASOFT = @as(c_int, 0x10);
pub const B0 = @as(c_int, 0);
pub const B50 = @as(c_int, 50);
pub const B75 = @as(c_int, 75);
pub const B110 = @as(c_int, 110);
pub const B134 = @as(c_int, 134);
pub const B150 = @as(c_int, 150);
pub const B200 = @as(c_int, 200);
pub const B300 = @as(c_int, 300);
pub const B600 = @as(c_int, 600);
pub const B1200 = @as(c_int, 1200);
pub const B1800 = @as(c_int, 1800);
pub const B2400 = @as(c_int, 2400);
pub const B4800 = @as(c_int, 4800);
pub const B9600 = @as(c_int, 9600);
pub const B19200 = @as(c_int, 19200);
pub const B38400 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 38400, .decimal);
pub const B7200 = @as(c_int, 7200);
pub const B14400 = @as(c_int, 14400);
pub const B28800 = @as(c_int, 28800);
pub const B57600 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 57600, .decimal);
pub const B76800 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 76800, .decimal);
pub const B115200 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 115200, .decimal);
pub const B230400 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230400, .decimal);
pub const EXTA = @as(c_int, 19200);
pub const EXTB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 38400, .decimal);
pub const TCIFLUSH = @as(c_int, 1);
pub const TCOFLUSH = @as(c_int, 2);
pub const TCIOFLUSH = @as(c_int, 3);
pub const TCOOFF = @as(c_int, 1);
pub const TCOON = @as(c_int, 2);
pub const TCIOFF = @as(c_int, 3);
pub const TCION = @as(c_int, 4);
pub const _SYS_TTYCOM_H_ = "";
pub const _SYS_IOCCOM_H_ = "";
pub const _SYS__TYPES_H_ = "";
pub const _BSD_MACHINE__TYPES_H_ = "";
pub const _BSD_ARM__TYPES_H_ = "";
pub const __DARWIN_NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _SYS__PTHREAD_TYPES_H_ = "";
pub const __PTHREAD_SIZE__ = @as(c_int, 8176);
pub const __PTHREAD_ATTR_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_MUTEXATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_MUTEX_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_CONDATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_COND_SIZE__ = @as(c_int, 40);
pub const __PTHREAD_ONCE_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_RWLOCK_SIZE__ = @as(c_int, 192);
pub const __PTHREAD_RWLOCKATTR_SIZE__ = @as(c_int, 16);
pub const IOCPARM_MASK = @as(c_int, 0x1fff);
pub inline fn IOCPARM_LEN(x: anytype) @TypeOf((x >> @as(c_int, 16)) & IOCPARM_MASK) {
    return (x >> @as(c_int, 16)) & IOCPARM_MASK;
}
pub inline fn IOCBASECMD(x: anytype) @TypeOf(x & ~(IOCPARM_MASK << @as(c_int, 16))) {
    return x & ~(IOCPARM_MASK << @as(c_int, 16));
}
pub inline fn IOCGROUP(x: anytype) @TypeOf((x >> @as(c_int, 8)) & @as(c_int, 0xff)) {
    return (x >> @as(c_int, 8)) & @as(c_int, 0xff);
}
pub const IOCPARM_MAX = IOCPARM_MASK + @as(c_int, 1);
pub const IOC_VOID = @import("std").zig.c_translation.cast(__uint32_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hexadecimal));
pub const IOC_OUT = @import("std").zig.c_translation.cast(__uint32_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hexadecimal));
pub const IOC_IN = @import("std").zig.c_translation.cast(__uint32_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal));
pub const IOC_INOUT = IOC_IN | IOC_OUT;
pub const IOC_DIRMASK = @import("std").zig.c_translation.cast(__uint32_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe0000000, .hexadecimal));
pub inline fn _IOC(inout: anytype, group: anytype, num: anytype, len: anytype) @TypeOf(((inout | ((len & IOCPARM_MASK) << @as(c_int, 16))) | (group << @as(c_int, 8))) | num) {
    return ((inout | ((len & IOCPARM_MASK) << @as(c_int, 16))) | (group << @as(c_int, 8))) | num;
}
pub inline fn _IO(g: anytype, n: anytype) @TypeOf(_IOC(IOC_VOID, g, n, @as(c_int, 0))) {
    return _IOC(IOC_VOID, g, n, @as(c_int, 0));
}
pub inline fn _IOR(g: anytype, n: anytype, t: anytype) @TypeOf(_IOC(IOC_OUT, g, n, @import("std").zig.c_translation.sizeof(t))) {
    _ = @TypeOf(t);
    return _IOC(IOC_OUT, g, n, @import("std").zig.c_translation.sizeof(t));
}
pub inline fn _IOW(g: anytype, n: anytype, t: anytype) @TypeOf(_IOC(IOC_IN, g, n, @import("std").zig.c_translation.sizeof(t))) {
    _ = @TypeOf(t);
    return _IOC(IOC_IN, g, n, @import("std").zig.c_translation.sizeof(t));
}
pub inline fn _IOWR(g: anytype, n: anytype, t: anytype) @TypeOf(_IOC(IOC_INOUT, g, n, @import("std").zig.c_translation.sizeof(t))) {
    _ = @TypeOf(t);
    return _IOC(IOC_INOUT, g, n, @import("std").zig.c_translation.sizeof(t));
}
pub const TIOCMODG = _IOR('t', @as(c_int, 3), c_int);
pub const TIOCMODS = _IOW('t', @as(c_int, 4), c_int);
pub const TIOCM_LE = @as(c_int, 0o001);
pub const TIOCM_DTR = @as(c_int, 0o002);
pub const TIOCM_RTS = @as(c_int, 0o004);
pub const TIOCM_ST = @as(c_int, 0o010);
pub const TIOCM_SR = @as(c_int, 0o020);
pub const TIOCM_CTS = @as(c_int, 0o040);
pub const TIOCM_CAR = @as(c_int, 0o100);
pub const TIOCM_CD = TIOCM_CAR;
pub const TIOCM_RNG = @as(c_int, 0o200);
pub const TIOCM_RI = TIOCM_RNG;
pub const TIOCM_DSR = @as(c_int, 0o400);
pub const TIOCEXCL = _IO('t', @as(c_int, 13));
pub const TIOCNXCL = _IO('t', @as(c_int, 14));
pub const TIOCFLUSH = _IOW('t', @as(c_int, 16), c_int);
pub const TIOCGETA = _IOR('t', @as(c_int, 19), struct_termios);
pub const TIOCSETA = _IOW('t', @as(c_int, 20), struct_termios);
pub const TIOCSETAW = _IOW('t', @as(c_int, 21), struct_termios);
pub const TIOCSETAF = _IOW('t', @as(c_int, 22), struct_termios);
pub const TIOCGETD = _IOR('t', @as(c_int, 26), c_int);
pub const TIOCSETD = _IOW('t', @as(c_int, 27), c_int);
pub const TIOCIXON = _IO('t', @as(c_int, 129));
pub const TIOCIXOFF = _IO('t', @as(c_int, 128));
pub const TIOCSBRK = _IO('t', @as(c_int, 123));
pub const TIOCCBRK = _IO('t', @as(c_int, 122));
pub const TIOCSDTR = _IO('t', @as(c_int, 121));
pub const TIOCCDTR = _IO('t', @as(c_int, 120));
pub const TIOCGPGRP = _IOR('t', @as(c_int, 119), c_int);
pub const TIOCSPGRP = _IOW('t', @as(c_int, 118), c_int);
pub const TIOCOUTQ = _IOR('t', @as(c_int, 115), c_int);
pub const TIOCSTI = _IOW('t', @as(c_int, 114), u8);
pub const TIOCNOTTY = _IO('t', @as(c_int, 113));
pub const TIOCPKT = _IOW('t', @as(c_int, 112), c_int);
pub const TIOCPKT_DATA = @as(c_int, 0x00);
pub const TIOCPKT_FLUSHREAD = @as(c_int, 0x01);
pub const TIOCPKT_FLUSHWRITE = @as(c_int, 0x02);
pub const TIOCPKT_STOP = @as(c_int, 0x04);
pub const TIOCPKT_START = @as(c_int, 0x08);
pub const TIOCPKT_NOSTOP = @as(c_int, 0x10);
pub const TIOCPKT_DOSTOP = @as(c_int, 0x20);
pub const TIOCPKT_IOCTL = @as(c_int, 0x40);
pub const TIOCSTOP = _IO('t', @as(c_int, 111));
pub const TIOCSTART = _IO('t', @as(c_int, 110));
pub const TIOCMSET = _IOW('t', @as(c_int, 109), c_int);
pub const TIOCMBIS = _IOW('t', @as(c_int, 108), c_int);
pub const TIOCMBIC = _IOW('t', @as(c_int, 107), c_int);
pub const TIOCMGET = _IOR('t', @as(c_int, 106), c_int);
pub const TIOCGWINSZ = _IOR('t', @as(c_int, 104), struct_winsize);
pub const TIOCSWINSZ = _IOW('t', @as(c_int, 103), struct_winsize);
pub const TIOCUCNTL = _IOW('t', @as(c_int, 102), c_int);
pub const TIOCSTAT = _IO('t', @as(c_int, 101));
pub inline fn UIOCCMD(n: anytype) @TypeOf(_IO('u', n)) {
    return _IO('u', n);
}
pub const TIOCSCONS = _IO('t', @as(c_int, 99));
pub const TIOCCONS = _IOW('t', @as(c_int, 98), c_int);
pub const TIOCSCTTY = _IO('t', @as(c_int, 97));
pub const TIOCEXT = _IOW('t', @as(c_int, 96), c_int);
pub const TIOCSIG = _IO('t', @as(c_int, 95));
pub const TIOCDRAIN = _IO('t', @as(c_int, 94));
pub const TIOCMSDTRWAIT = _IOW('t', @as(c_int, 91), c_int);
pub const TIOCMGDTRWAIT = _IOR('t', @as(c_int, 90), c_int);
pub const TIOCSDRAINWAIT = _IOW('t', @as(c_int, 87), c_int);
pub const TIOCGDRAINWAIT = _IOR('t', @as(c_int, 86), c_int);
pub const TIOCDSIMICROCODE = _IO('t', @as(c_int, 85));
pub const TIOCPTYGRANT = _IO('t', @as(c_int, 84));
pub const TIOCPTYGNAME = _IOC(IOC_OUT, 't', @as(c_int, 83), @as(c_int, 128));
pub const TIOCPTYUNLK = _IO('t', @as(c_int, 82));
pub const TTYDISC = @as(c_int, 0);
pub const TABLDISC = @as(c_int, 3);
pub const SLIPDISC = @as(c_int, 4);
pub const PPPDISC = @as(c_int, 5);
pub const _SYS_TTYDEFAULTS_H_ = "";
pub const TTYDEF_IFLAG = (((BRKINT | ICRNL) | IMAXBEL) | IXON) | IXANY;
pub const TTYDEF_OFLAG = OPOST | ONLCR;
pub const TTYDEF_LFLAG = (((((ECHO | ICANON) | ISIG) | IEXTEN) | ECHOE) | ECHOKE) | ECHOCTL;
pub const TTYDEF_CFLAG = (CREAD | CS8) | HUPCL;
pub const TTYDEF_SPEED = B9600;
pub inline fn CTRL(x: anytype) @TypeOf(x & @as(c_int, 0o37)) {
    return x & @as(c_int, 0o37);
}
pub const CEOF = CTRL('d');
pub const CEOL = @as(c_int, 0xff);
pub const CERASE = @as(c_int, 0o177);
pub const CINTR = CTRL('c');
pub const CSTATUS = CTRL('t');
pub const CKILL = CTRL('u');
pub const CMIN = @as(c_int, 1);
pub const CQUIT = @as(c_int, 0o34);
pub const CSUSP = CTRL('z');
pub const CTIME = @as(c_int, 0);
pub const CDSUSP = CTRL('y');
pub const CSTART = CTRL('q');
pub const CSTOP = CTRL('s');
pub const CLNEXT = CTRL('v');
pub const CDISCARD = CTRL('o');
pub const CWERASE = CTRL('w');
pub const CREPRINT = CTRL('r');
pub const CEOT = CEOF;
pub const CBRK = CEOL;
pub const CRPRNT = CREPRINT;
pub const CFLUSH = CDISCARD;
pub const __TYPES_H_ = "";
pub const __DARWIN_WCHAR_MAX = __WCHAR_MAX__;
pub const __DARWIN_WCHAR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal) - @as(c_int, 1);
pub const __DARWIN_WEOF = @import("std").zig.c_translation.cast(__darwin_wint_t, -@as(c_int, 1));
pub const _FORTIFY_SOURCE = @as(c_int, 2);
pub const _PID_T = "";
pub const termios = struct_termios;
pub const __darwin_pthread_handler_rec = struct___darwin_pthread_handler_rec;
pub const _opaque_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const _opaque_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const _opaque_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const _opaque_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const _opaque_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const _opaque_pthread_once_t = struct__opaque_pthread_once_t;
pub const _opaque_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const _opaque_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const _opaque_pthread_t = struct__opaque_pthread_t;
pub const winsize = struct_winsize;
