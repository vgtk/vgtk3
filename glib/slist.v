module glib

pub type glib__CompareFunc 		fn(voidptr, voidptr) int
pub type glib__CompareDataFunc	fn(voidptr, voidptr, voidptr) int

pub struct SList {
	c &GSList
}

pub fn new_slist() SList {
	return SList{&GSList(0)}
}

pub fn slist_alloc() SList {
	return SList{g_slist_alloc()}
}

pub fn (s SList) append(data voidptr) SList {
	return SList{g_slist_append(s.c, data)}
}

pub fn (s SList) prepend(data voidptr) SList {
	return SList{g_slist_prepend(s.c, data)}
}

pub fn (s SList) insert(data voidptr, position int) SList {
	return SList{g_slist_insert(s.c, data, position)}
}

pub fn (s SList) insert_before(sibling SList, data voidptr) SList {
	return SList{g_slist_insert_before(s.c, sibling.c, data)}
}

pub fn (s SList) insert_sorted(data voidptr, compare_fn CompareFunc) SList {
	return SList{g_slist_insert_sorted(s.c, data, compare_fn)}
}

pub fn (s SList) remove(data voidptr) SList {
	return SList{g_slist_remove(s.c, data)}
}

pub fn (s SList) remove_link(link SList) SList {
	return SList{g_slist_remove_link(s.c, link.c)}
}

pub fn (s SList) delete_link(link SList) SList {
	return SList{g_slist_delete_link(s.c, link.c)}
}

pub fn (s SList) remove_all(data voidptr) SList {
	return SList{g_slist_remove_all(s.c, data)}
}

pub fn (s SList) free() {
	g_slist_free(s.c)
}

pub fn (s SList) free_full(free_fn DestroyNotify) {
	g_slist_free_full(s.c, free_fn)
}

pub fn (s SList) free1() {
	g_slist_free_1(s.c)
}

pub fn (s SList) length() u32 {
	return g_slist_length(s.c)
}

pub fn (s SList) copy() SList {
	return SList{g_slist_copy(s.c)}
}

pub fn (s SList) copy_deep(func CopyFunc, user_data voidptr) SList {
	return SList{g_slist_copy_deep(s.c, func, user_data)}
}

pub fn (s SList) reverse() SList {
	return SList{g_slist_reverse(s.c)}
}

pub fn (s SList) insert_sorted_with_data(data voidptr, func CompareDataFunc, user_data voidptr) SList {
	return SList{g_slist_insert_sorted_with_data(s.c, data, func, user_data)}
}

pub fn (s SList) sort(compare_fn CompareFunc) SList {
	return SList{g_slist_sort(s.c, compare_fn)}
} 

pub fn (s SList) sort_with_data(compare_fn CompareDataFunc, user_data voidptr) SList {
	return SList{g_slist_sort_with_data(s.c, compare_fn, user_data)}
}

pub fn (s SList) concat(list2 SList) SList {
	return SList{g_slist_concat(s.c, list2.c)}
}

pub fn (s SList) foreach(func Func, user_data voidptr) {
	g_slist_foreach(s.c, func, user_data)
}

pub fn (s SList) last() SList {
	return SList{g_slist_last(s.c)}
}

pub fn (s SList) next() SList {
	return SList{g_slist_next(s.c)}
}

pub fn (s SList) nth(n u32) SList {
	return SList{g_slist_nth(s.c, n)}
}


pub fn (s SList) nth_data(n u32) voidptr {
	return g_slist_nth_data(s.c, n)
}

pub fn (s SList) find(data voidptr) SList {
	return SList{g_slist_find(s.c, data)}
}

pub fn (s SList) find_custom(data voidptr, func CompareFunc) SList {
	return SList{g_slist_find_custom(s.c, data, func)}
}

pub fn (s SList) position(llink SList) int {
	return g_slist_position(s.c, llink.c)
}

pub fn (s SList) index(data voidptr) int {
	return g_slist_index(s.c, data)
} 

pub fn (s SList) data() voidptr {
	return s.c.data
}






// 
