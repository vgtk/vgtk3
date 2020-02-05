module glib

pub fn timeout_add(interval u32, function fn(user_data voidptr) bool, data voidptr) u32 {
	return g_timeout_add(interval, function, data)
}

pub fn source_remove(tag u32) bool {
	return g_source_remove(tag)
}
