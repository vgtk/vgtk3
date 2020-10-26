module glib

#include <gmodule.h>
#include <glib/glist.h>

pub struct C._GList {
	data voidptr
	next &C._GList
	prev &C._GList
}
pub struct C._GSList {
	data voidptr
	next &C._GSList
	prev &C._GSList
}
pub struct C.GArray {
  data charptr
  len u32
}
pub struct C._GString {
	str charptr
	len int
}
pub struct C.GBytes
pub struct C._GError {
pub:
	message charptr
}
pub struct C._GType
pub struct C._GValue
pub struct C._GParamSpec
pub struct C._GObjectClass
pub struct C._GObject
pub struct C._GMarkupParser
pub struct C.GMenuModel
pub struct C.GMenu
pub struct C.GVariant
pub struct C.GScanner

/* Arrays */
fn C.g_array_new(bool, bool, u32) &C.GArray
fn C.g_array_sized_new(bool, bool, u32, u32) &C.GArray
fn C.g_array_copy(&C.GArray) &C.GArray
fn C.g_array_ref(&C.GArray) &C.GArray
fn C.g_array_unref(&C.GArray)
fn C.g_array_get_element_size(&C.GArray) u32
fn C.g_array_append_val(&C.GArray, voidptr) &C.GArray
fn C.g_array_append_vals(&C.GArray, voidptr, u32) &C.GArray
fn C.g_array_prepend_val(&C.GArray, voidptr) &C.GArray
fn C.g_array_prepend_vals(&C.GArray, voidptr, u32) &C.GArray
fn C.g_array_insert_val(&C.GArray, u32,voidptr) &C.GArray
fn C.g_array_insert_vals(&C.GArray, u32, voidptr, u32) &C.GArray
fn C.g_array_remove_index(&C.GArray, u32) &C.GArray
fn C.g_array_remove_index_fast(&C.GArray, u32) &C.GArray
fn C.g_array_remove_range(&C.GArray, u32, u32) &C.GArray
fn C.g_array_sort(&C.GArray, int)
fn C.g_array_sort_with_data(&C.GArray, int, voidptr)
fn C.g_array_binary_search(&C.GArray, voidptr, int, &u32) bool
fn C.g_array_index(&C.GArray, voidptr, u32) voidptr 
fn C.g_array_set_size(&C.GArray, u32) &C.GArray
fn C.g_array_set_clear_func(&C.GArray, voidptr)
fn C.g_array_free(&C.GArray, bool) &charptr

/* Strings */
fn C.g_string_new(charptr) &C._GString
fn C.g_string_new_len(charptr, int) &C._GString
fn C.g_string_sized_new(int) &C._GString
fn C.g_string_assign(&C._GString, charptr) &C._GString
fn C.g_string_vprintf(&C._GString, charptr, va_list) 
fn C.g_string_append_vprintf(&C._GString, charptr, va_list) 
fn C.g_string_printf(&C._GString, charptr) 
fn C.g_string_append_printf(&C._GString, charptr) 
fn C.g_string_append(&C._GString, charptr) &C._GString
fn C.g_string_append_c(&C._GString, charptr) &C._GString
fn C.g_string_append_unichar(&C._GString, rune) &C._GString
fn C.g_string_append_len(&C._GString, charptr, int) &C._GString
fn C.g_string_append_uri_escaped(&C._GString, charptr, charptr, bool) &C._GString
fn C.g_string_prepend(&C._GString, charptr) &C._GString
fn C.g_string_prepend_c(&C._GString, charptr) &C._GString
fn C.g_string_prepend_unichar(&C._GString, rune) &C._GString
fn C.g_string_prepend_len(&C._GString, charptr, int) &C._GString
fn C.g_string_insert(&C._GString, int, charptr) &C._GString
fn C.g_string_insert_c(&C._GString, int, charptr) &C._GString
fn C.g_string_insert_unichar(&C._GString, int, rune) &C._GString
fn C.g_string_insert_len(&C._GString, int, charptr, int) &C._GString
fn C.g_string_overwrite(&C._GString, int, charptr) &C._GString
fn C.g_string_overwrite_len(&C._GString, int, charptr, int) &C._GString
fn C.g_string_erase(&C._GString, int, int) &C._GString
fn C.g_string_truncate(&C._GString, int) &C._GString
fn C.g_string_set_size(&C._GString, int) &C._GString
fn C.g_string_free(&C._GString, bool) charptr
fn C.g_string_free_to_bytes(&C._GString) &GBytes
fn C.g_string_up(&C._GString) &C._GString
fn C.g_string_down(&C._GString) &C._GString
fn C.g_string_hash(&C._GString) u32
fn C.g_string_equal(&C._GString, &C._GString) bool

/* C.GSList */
fn C.g_slist_alloc() &C.GSList
fn C.g_slist_append(&C.GSList, voidptr) &C.GSList
fn C.g_slist_prepend(&C.GSList, voidptr) &C.GSList
fn C.g_slist_insert(&C.GSList, voidptr, int) &C.GSList
fn C.g_slist_insert_before(&C.GSList, &C.GSList, voidptr) &C.GSList
fn C.g_slist_insert_sorted(&C.GSList, voidptr, int) &C.GSList
fn C.g_slist_remove(&C.GSList, voidptr) &C.GSList
fn C.g_slist_remove_link(&C.GSList, &C.GSList) &C.GSList
fn C.g_slist_delete_link(&C.GSList, &C.GSList) &C.GSList
fn C.g_slist_remove_all(&C.GSList, voidptr) &C.GSList
fn C.g_slist_free(&C.GSList)
fn C.g_slist_free_full(&C.GSList, voidptr)
fn C.g_slist_free_1(&C.GSList)
fn C.g_slist_length(&C.GSList) u32
fn C.g_slist_copy(&C.GSList) &C.GSList
fn C.g_slist_copy_deep(&C.GSList, int, voidptr) &C.GSList
fn C.g_slist_reverse(&C.GSList) &C.GSList
fn C.g_slist_insert_sorted_with_data(&C.GSList, voidptr, int, voidptr) &C.GSList
fn C.g_slist_sort(&C.GSList, int) &C.GSList
fn C.g_slist_sort_with_data(&C.GSList, int, voidptr) &C.GSList
fn C.g_slist_concat(&C.GSList, &C.GSList) &C.GSList
fn C.g_slist_foreach(&C.GSList, int, voidptr)
fn C.g_slist_last(&C.GSList) &C.GSList
fn C.g_slist_next(&C.GSList) &C.GSList
fn C.g_slist_nth(&C.GSList, u32) &C.GSList
fn C.g_slist_nth_data(&C.GSList, u32) voidptr
fn C.g_slist_find(&C.GSList, voidptr) &C.GSList
fn C.g_slist_find_custom(&C.GSList, voidptr, int) &C.GSList
fn C.g_slist_position(&C.GSList, &C.GSList) int
fn C.g_slist_index(&C.GSList, voidptr) int

/* GList */
fn C.g_list_append(&C.GList, voidptr) &C.GList
fn C.g_list_prepend(&C.GList, voidptr) &C.GList
fn C.g_list_insert(&C.GList, voidptr, int) &C.GList
fn C.g_list_insert_before(&C.GList, &C.GList, voidptr) &C.GList
fn C.g_list_insert_before_link(&C.GList, C.GList, C.GList) &C.GList
fn C.g_list_insert_sorted(&C.GList, voidptr, int) &C.GList
fn C.g_list_remove(&C.GList, voidptr) &C.GList
fn C.g_list_remove_link(&C.GList, &C.GList) &C.GList
fn C.g_list_delete_link(&C.GList, &C.GList) &C.GList
fn C.g_list_remove_all(&C.GList, voidptr) &C.GList
fn C.g_list_free(&C.GList)
fn C.g_list_free_full(&C.GList, voidptr)
fn C.g_list_alloc() &C.GList
fn C.g_list_free_1(&C.GList)
fn C.g_list_length(&C.GList) u32
fn C.g_list_copy(&C.GList) &C.GList
fn C.g_list_copy_deep(&C.GList, int, voidptr) &C.GList
fn C.g_list_reverse(&C.GList) &C.GList
fn C.g_list_sort(&C.GList, int) &C.GList
fn C.g_list_insert_sorted_with_data(&C.GList, voidptr, int, voidptr) &C.GList
fn C.g_list_sort_with_data(&C.GList, int, voidptr) &C.GList
fn C.g_list_concat(&C.GList, &C.GList) &C.GList
fn C.g_list_foreach(&C.GList, voidptr, voidptr)
fn C.g_list_first(&C.GList) &C.GList
fn C.g_list_last(&C.GList) &C.GList
fn C.g_list_previous(&C.GList) &C.GList
fn C.g_list_next(&C.GList) &C.GList
fn C.g_list_nth(&C.GList, u32) &C.GList
fn C.g_list_nth_data(&C.GList, u32) voidptr
fn C.g_list_nth_prev(&C.GList, u32) &C.GList
fn C.g_list_find(&C.GList, voidptr) &C.GList
fn C.g_list_find_custom(&C.GList, voidptr, int) &C.GList
fn C.g_list_position(&C.GList, &C.GList) int
fn C.g_list_index(&C.GList, voidptr) int
fn C.g_list_free1(&C.GList)

fn C.g_timeout_add(u32, voidptr, voidptr) u32
fn C.g_source_remove(u32) bool
