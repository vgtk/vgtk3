module gtk

pub fn accel_map_add_entry(path string, key int, mod_type int) {
	gtk_accel_map_add_entry(g_intern_static_string(path.str), key, mod_type)
}
