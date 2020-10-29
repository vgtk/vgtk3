module glib

#include <glib/glist.h>

pub type Func = fn(voidptr, voidptr)

pub struct List {
	c &C.GList
}

pub fn new_list() List {
	l := &C.GList{0,0,0}
	return List{l}
}

pub fn list_alloc() List {
	return List{C.g_list_alloc()}
}

pub fn (l List) append(data voidptr) List {
	return List{C.g_list_append(l.c, data)}
}

pub fn (l List) prepend(data voidptr) List {
	return List{C.g_list_prepend(l.c, data)}
}

pub fn (l List) insert(data voidptr, pos int) List {
	return List{C.g_list_insert(l.c, data, pos)}
}

pub fn (l List) insert_before(sibling List, data voidptr) List {
	return List{C.g_list_insert(l.c, sibling.c, data)}
}

// pub fn (l List) insert_before_link(sibling List, link List) List {
// 	cptr := g_list_insert_before_link(l.c, sibling.c, link.c)
// 	return List{cptr}
// }

// pub fn (l List) insert_sorted(data voidptr, func CompareFunc) List {
// 	return List{g_list_insert_before_link(l.c, data, func)}
// }

pub fn (l List) remove(data voidptr) List {
	return List{C.g_list_remove(l.c, data)}
}

pub fn (l List) remove_link(llink List) List {
	return List{C.g_list_remove_link(l.c, llink.c)}
}

pub fn (l List) delete_link(link List) List {
	return List{C.g_list_delete_link(l.c, link.c)}
}

pub fn (l List) remove_all(data voidptr) List {
	return List{C.g_list_remove_all(l.c, data)}
}

pub fn (l List) free() {
	C.g_list_free(l.c)
}

pub fn (l List) free_full(free_func DestroyNotify) {
	C.g_list_free_full(l.c, free_func)
}

pub fn (l List) free_1() {
	C.g_list_free_1(l.c)
}

pub fn (l List) length() u32 {
	return C.g_list_length(l.c)
}

pub fn (l List) copy() List {
	return List{C.g_list_copy(l.c)}
}

pub fn (l List) copy_deep(func CopyFunc, user_data voidptr) List {
	return List{C.g_list_copy_deep(l.c, func, user_data)}
}

pub fn (l List) reverse() List{
	return List{C.g_list_reverse(l.c)}
}

pub fn (l List) sort(compare_func fn(voidptr, voidptr) int) List {
	return List{C.g_list_sort(l.c, compare_func)}
}

pub fn (l List) insert_sorted_with_data(data voidptr, func CompareFunc, user_data voidptr) List {
	return List{C.g_list_insert_sorted_with_data(l.c, data, func, user_data)}
}

pub fn (l List) sort_with_data(compare_func CompareDataFunc, user_data voidptr) List {
	return List{C.g_list_sort_with_data(l.c, compare_func, user_data)}
}

pub fn (l List) concat(list2 List) List {
	return List{C.g_list_concat(l.c, list2.c)}
}

pub fn (l List) foreach(func Func, user_data voidptr) {
	C.g_list_foreach(l.c, func, user_data)
}

pub fn (l List) first() List {
	return List{C.g_list_first(l.c)}
}

pub fn (l List) last() List {
	return List{C.g_list_last(l.c)}
}

pub fn (l List) previous() List {
	return List{C.g_list_previous(l.c)}
}

pub fn (l List) next() List {
	return List{C.g_list_next(l.c)}
}

pub fn (l List) nth(n u32) List {
	return List{C.g_list_nth(l.c, n)}
}

pub fn (l List) nth_data(n u32) voidptr {
	return C.g_list_nth_data(l.c, n)
}

pub fn (l List) nth_prev(n u32) List {
	return List{C.g_list_nth_prev(l.c, n)}
}

pub fn (l List) find(data voidptr) List {
	return List{C.g_list_find(l.c, data)}
}

pub fn (l List) find_custom(data voidptr, func CompareFunc) List {
	return List{C.g_list_find_custom(l.c, data, func)}
}

pub fn (l List) position(llink List) int {
	return C.g_list_position(l.c, llink.c)
}

pub fn (l List) index(data voidptr) int {
	return C.g_list_index(l.c, data)
}

pub fn (l List) free1() {
	C.g_list_free1(l.c)
}

pub fn (l List) data() voidptr {
	return l.c.data
}

pub fn (l &List) get_cptr() &C.GList {
	return l.c
}
