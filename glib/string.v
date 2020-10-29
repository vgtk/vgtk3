module glib

pub type VAList = voidptr

pub struct String {
	c &C.GString
}

pub fn new_string(str string) String {
	return String{C.g_string_new(str.str)}
}

pub fn new_string_len(init string, len i64) String {
	return String{C.g_string_new_len(init.str, len)}
}

pub fn (s String) new_sized_string(dfl_size i64) String {
	return String{C.g_string_sized_new(dfl_size)}
}

pub fn (s String) assign(rval string) String {
	cptr := C.g_string_assign(s.c, rval.str)
	return String{cptr}
}

pub fn (s String) vprintf(format string, args VAList) {
	C.g_string_vprintf(s.c, format.str, args)
}

pub fn (s String) append_vprintf(format string, args VAList) {
	C.g_string_append_vprintf(s.c, format.str, args)
}

// TODO: Fix this after V suppor variadic with multiple types
pub fn (s String) printf(format string, params voidptr) {
	C.g_string_printf(s.c, format.str, params)
}

pub fn (s String) append_printf(format string, params voidptr) {
	C.g_string_append_printf(s.c, format.str, params)
}

pub fn (s String) append(val string) String {
	cptr := C.g_string_append(s.c, val.str)
	return String{cptr}
}

pub fn (s String) append_c(val byte) String {
	cptr := C.g_string_append_c(s.c, val)
	return String{cptr}
}

pub fn (s String) append_unichar(wc rune) String {
	cptr := C.g_string_append_unichar(s.c, wc)
	return String{cptr}
}

pub fn (s String) append_len(val string, len i64) String {
	cptr := C.g_string_append_len(s.c, val.str, len)
	return String{cptr}
}

pub fn (s String) append_uri_escaped(unescaped string, reserved_chars_allowed string) String {
	cptr := C.g_string_append_uri_escaped(s.c, unescaped.str, reserved_chars_allowed.str, true)
	return String{cptr}
}

pub fn (s String) prepend(val string) String {
	cptr := C.g_string_prepend(s.c, val.str)
	return String{cptr}
}

pub fn (s String) prepend_c(val byte) String {
	cptr := C.g_string_prepend_c(s.c, val)
	return String{cptr}
}

pub fn (s String) prepend_unichar(wc rune) String {
	cptr := C.g_string_prepend_unichar(s.c, wc)
	return String{cptr}
}

pub fn (s String) prepend_len(val string, len i64) String {
	cptr := C.g_string_prepend_len(s.c, val.str, len)
	return String{cptr}
}

pub fn (s String) insert(pos i64, val string) String {
	cptr := C.g_string_insert(s.c, pos, val.str)
	return String{cptr}
}

pub fn (s String) insert_c(pos i64, c byte) String {
	cptr := C.g_string_insert_c(s.c, pos, c)
	return String{cptr}
}

pub fn (s String) insert_unichar(pos i64, wc rune) String {
	cptr := C.g_string_insert_unichar(s.c, pos, wc)
	return String{cptr}
}

pub fn (s String) insert_len(pos i64, val string, len i64) String {
	cptr := C.g_string_insert_len(s.c, pos, val.str, len)
	return String{cptr}
}

pub fn (s String) overwrite(pos i64, val string) String {
	cptr := C.g_string_overwrite(s.c, pos, val.str)
	return String{cptr}
}

pub fn (s String) overwrite_len(pos i64, val string, len i64) String {
	cptr := C.g_string_overwrite_len(s.c, pos, val.str, len)
	return String{cptr}
}

pub fn (s String) erase(pos i64, len i64) String {
	cptr := C.g_string_erase(s.c, pos, len)
	return String{cptr}
}

pub fn (s String) truncate(len i64) String {
	cptr := C.g_string_truncate(s.c, len)
	return String{cptr}
}

pub fn (s String) set_size(len i64) String {
	cptr := C.g_string_set_size(s.c, len)
	return String{cptr}
}

pub fn (s String) free(free_segment bool) string {
	cptr := C.g_string_free(s.c, free_segment)
	return tos3(cptr)
}

pub fn (s String) free_to_bytes() byteptr {
	return byteptr(C.g_string_free_to_bytes(s.c))
}

pub fn (s String) hash() u32 {
	return C.g_string_hash(s.c)
}

pub fn (s String) equal(str2 String) bool {
	return C.g_string_equal(s.c, str2.c)
}

pub fn (s String) get_cptr() &C.GString {
	return s.c
}

pub fn (s String) len() i64 {
	return s.c.len
}

pub fn (s String) str() string {
	return tos3(s.c.str)
}
