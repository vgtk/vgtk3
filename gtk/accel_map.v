module gtk

pub type AccelMapForeach fn(voidptr, charptr, u32, GdkModifierType, bool)

pub struct AccelMap {
	c &GtkAccelMap
}

pub fn accel_map_add_entry(path string, key int, mod_type int) {
	gtk_accel_map_add_entry(path.str, key, mod_type)
}

// TODO
pub fn accel_map_lookup_entry(accel_path string) (bool, &GtkAccelKey) {
	key := &GtkAccelKey(0)
	res := gtk_accel_map_lookup_entry(accel_path.str, &key)
	return res, key
}

pub fn accel_map_change_entry(accel_path string, accel_key u32, accel_mods GdkModifierType, replace bool) bool {
	return gtk_accel_map_change_entry(accel_path.str, accel_key, accel_mods, replace)
}

pub fn accel_map_load(filename string) {
	gtk_accel_map_load(filename.str)
}

pub fn accel_map_save(filename string) {
	gtk_accel_map_save(filename.str)
}

pub fn accel_map_foreach(data voidptr, foreach_func AccelMapForeach) {
	gtk_accel_map_foreach(data, gtk_accel_map_foreach)
}

pub fn accel_map_load_fd(fd int) {
	gtk_accel_map_load_fd(fd)
}

pub fn accel_map_save_fd(fd int) {
	gtk_accel_map_save_fd(fd)
}

pub fn accel_map_load_scanner(scanner &GScanner) {
	gtk_accel_map_load_scanner(scanner)
}

pub fn accel_map_add_filter(filter_pattern string) {
	gtk_accel_map_add_filter(filter_pattern.str)
}

pub fn accel_map_foreach_unfiltered(data voidptr, foreach_func AccelMapForeach) {
	gtk_accel_map_foreach_unfiltered(data, foreach_func)
}

pub fn accel_map_get() AccelMap {
	return AccelMap{gtk_accel_map_get()}
}

pub fn accel_map_lock_path(accel_path string) {
	gtk_accel_map_lock_path(accel_path.str)
}

pub fn accel_map_unlock_path(accel_path string) {
	gtk_accel_map_unlock_path(accel_path.str)
}

// TODO
// pub type AccelMapOnChange fn(object AccelMap, accel_path charptr, accel_key u32, accel_mods GdkModifierType, user_data voidptr)
pub fn (a &AccelMap) on_changed(cb fn(object AccelMap, accel_path charptr, accel_key u32, accel_mods GdkModifierType, user_data voidptr), data voidptr) int {
	return g_signal_connect(a.c ,'changed', cb, data)
}
