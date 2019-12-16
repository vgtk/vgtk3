module gtk

fn C.gtk_accel_map_add_entry(voidptr, int, int)

pub fn accel_map_add_entry(path string, key int, mod_type int) {
	C.gtk_accel_map_add_entry(C.g_intern_static_string(path.str), key, mod_type)
}
