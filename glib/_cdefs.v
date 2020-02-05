module glib

#include <gmodule.h>

pub struct C.GList {
	data voidptr
	next &GList
	prev &GList
}
pub struct C.GSList {
	data voidptr
	next &GSList
	prev &GSList	
}
pub struct C.GArray {
  data charptr
  len u32
}
pub struct C.GString {
	str charptr
	len int
}
pub struct C.GBytes
pub struct C.GError {
pub:
	message charptr
}
pub struct C.GType
pub struct C.GValue
pub struct C.GParamSpec
pub struct C.GObjectClass
pub struct C.GObject
pub struct C.GMarkupParser
pub struct C.GMenuModel
pub struct C.GMenu
pub struct C.GVariant
pub struct C.GScanner

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

/* GSList */
fn C.g_slist_alloc() &GSList
fn C.g_slist_append(&GSList, voidptr) &GSList
fn C.g_slist_prepend(&GSList, voidptr) &GSList
fn C.g_slist_insert(&GSList, voidptr, int) &GSList
fn C.g_slist_insert_before(&GSList, &GSList, voidptr) &GSList
fn C.g_slist_insert_sorted(&GSList, voidptr, int) &GSList
fn C.g_slist_remove(&GSList, voidptr) &GSList
fn C.g_slist_remove_link(&GSList, &GSList) &GSList
fn C.g_slist_delete_link(&GSList, &GSList) &GSList
fn C.g_slist_remove_all(&GSList, voidptr) &GSList
fn C.g_slist_free(&GSList)
fn C.g_slist_free_full(&GSList, voidptr)
fn C.g_slist_free_1(&GSList)
fn C.g_slist_length(&GSList) u32
fn C.g_slist_copy(&GSList) &GSList
fn C.g_slist_copy_deep(&GSList, int, voidptr) &GSList
fn C.g_slist_reverse(&GSList) &GSList
fn C.g_slist_insert_sorted_with_data(&GSList, voidptr, int, voidptr) &GSList
fn C.g_slist_sort(&GSList, int) &GSList
fn C.g_slist_sort_with_data(&GSList, int, voidptr) &GSList
fn C.g_slist_concat(&GSList, &GSList) &GSList
fn C.g_slist_foreach(&GSList, int, voidptr)
fn C.g_slist_last(&GSList) &GSList
fn C.g_slist_next(&GSList) &GSList
fn C.g_slist_nth(&GSList, u32) &GSList
fn C.g_slist_nth_data(&GSList, u32) voidptr
fn C.g_slist_find(&GSList, voidptr) &GSList
fn C.g_slist_find_custom(&GSList, voidptr, int) &GSList
fn C.g_slist_position(&GSList, &GSList) int
fn C.g_slist_index(&GSList, voidptr) int

/* GList */
fn C.g_list_append(&GList, voidptr) &GList
fn C.g_list_prepend(&GList, voidptr) &GList
fn C.g_list_insert(&GList, voidptr, int) &GList
fn C.g_list_insert_before(&GList, &GList, voidptr) &GList
fn C.g_list_insert_before_link(&GList, GList, GList) &GList
fn C.g_list_insert_sorted(&GList, voidptr, int) &GList
fn C.g_list_remove(&GList, voidptr) &GList
fn C.g_list_remove_link(&GList, &GList) &GList
fn C.g_list_delete_link(&GList, &GList) &GList
fn C.g_list_remove_all(&GList, voidptr) &GList
fn C.g_list_free(&GList)
fn C.g_list_free_full(&GList, voidptr)
fn C.g_list_alloc() &GList
fn C.g_list_free_1(&GList)
fn C.g_list_length(&GList) u32
fn C.g_list_copy(&GList) &GList
fn C.g_list_copy_deep(&GList, int, voidptr) &GList
fn C.g_list_reverse(&GList) &GList
fn C.g_list_sort(&GList, int) &GList
fn C.g_list_insert_sorted_with_data(&GList, voidptr, int, voidptr) &GList
fn C.g_list_sort_with_data(&GList, int, voidptr) &GList
fn C.g_list_concat(&GList, &GList) &GList
fn C.g_list_foreach(&GList, voidptr, voidptr)
fn C.g_list_first(&GList) &GList
fn C.g_list_last(&GList) &GList
fn C.g_list_previous(&GList) &GList
fn C.g_list_next(&GList) &GList
fn C.g_list_nth(&GList, u32) &GList
fn C.g_list_nth_data(&GList, u32) voidptr
fn C.g_list_nth_prev(&GList, u32) &GList
fn C.g_list_find(&GList, voidptr) &GList
fn C.g_list_find_custom(&GList, voidptr, int) &GList
fn C.g_list_position(&GList, &GList) int
fn C.g_list_index(&GList, voidptr) int
fn C.g_list_free1(&GList)

fn C.g_timeout_add(u32, voidptr, voidptr) u32
fn C.g_source_remove(u32) bool
