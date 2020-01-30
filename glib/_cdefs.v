module glib

pub struct C.GList
pub struct C.GArray {
  data charptr
  len u32
}
pub struct C.GString {
	str charptr
	len int
}
pub struct C.GBytes

/* Arrays */
fn C.g_array_new(bool, bool, u32) &GArray
fn C.g_array_sized_new(bool, bool, u32, u32) &GArray
fn C.g_array_copy(&GArray) &GArray
fn C.g_array_ref(&GArray) &GArray
fn C.g_array_unref(&GArray)
fn C.g_array_get_element_size(&GArray) u32
fn C.g_array_append_val(&GArray, voidptr) &GArray
fn C.g_array_append_vals(&GArray, voidptr, u32) &GArray
fn C.g_array_prepend_val(&GArray, voidptr) &GArray
fn C.g_array_prepend_vals(&GArray, voidptr, u32) &GArray
fn C.g_array_insert_val(&GArray, u32,voidptr) &GArray
fn C.g_array_insert_vals(&GArray, u32, voidptr, u32) &GArray
fn C.g_array_remove_index(&GArray, u32) &GArray
fn C.g_array_remove_index_fast(&GArray, u32) &GArray
fn C.g_array_remove_range(&GArray, u32, u32) &GArray
fn C.g_array_sort(&GArray, int)
fn C.g_array_sort_with_data(&GArray, int, voidptr)
fn C.g_array_binary_search(&GArray, voidptr, int, &u32) bool
fn C.g_array_index(&GArray, voidptr, u32) voidptr 
fn C.g_array_set_size(&GArray, u32) &GArray
fn C.g_array_set_clear_func(&GArray, voidptr)
fn C.g_array_free(&GArray, bool) &charptr

/* Strings */
fn C.g_string_new(charptr) &GString
fn C.g_string_new_len(charptr, int) &GString
fn C.g_string_sized_new(int) &GString
fn C.g_string_assign(&GString, charptr) &GString
fn C.g_string_vprintf(&GString, charptr, va_list) 
fn C.g_string_append_vprintf(&GString, charptr, va_list) 
fn C.g_string_printf(&GString, charptr) 
fn C.g_string_append_printf(&GString, charptr) 
fn C.g_string_append(&GString, charptr) &GString
fn C.g_string_append_c(&GString, charptr) &GString
fn C.g_string_append_unichar(&GString, rune) &GString
fn C.g_string_append_len(&GString, charptr, int) &GString
fn C.g_string_append_uri_escaped(&GString, charptr, charptr, bool) &GString
fn C.g_string_prepend(&GString, charptr) &GString
fn C.g_string_prepend_c(&GString, charptr) &GString
fn C.g_string_prepend_unichar(&GString, rune) &GString
fn C.g_string_prepend_len(&GString, charptr, int) &GString
fn C.g_string_insert(&GString, int, charptr) &GString
fn C.g_string_insert_c(&GString, int, charptr) &GString
fn C.g_string_insert_unichar(&GString, int, rune) &GString
fn C.g_string_insert_len(&GString, int, charptr, int) &GString
fn C.g_string_overwrite(&GString, int, charptr) &GString
fn C.g_string_overwrite_len(&GString, int, charptr, int) &GString
fn C.g_string_erase(&GString, int, int) &GString
fn C.g_string_truncate(&GString, int) &GString
fn C.g_string_set_size(&GString, int) &GString
fn C.g_string_free(&GString, bool) charptr
fn C.g_string_free_to_bytes(&GString) &GBytes
fn C.g_string_up(&GString) &GString
fn C.g_string_down(&GString) &GString
fn C.g_string_hash(&GString) u32
fn C.g_string_equal(&GString, &GString) bool
