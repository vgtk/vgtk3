module glib

pub struct Array {
	c &C.GArray
}

pub fn new_array(zero_terminated bool, clear_ bool, element_size u32) Array {
	return Array{C.g_array_new(zero_terminated, clear_, element_size)}
}

pub fn new_sized_array(zero_terminated bool, clear_ bool, element_size u32, reserved_size u32) Array {
	return Array{C.g_array_sized_new(zero_terminated, clear_, element_size, reserved_size)}
}

// TODO: GArray * C.g_array_copy (GArray *array)
pub fn (a Array) ref() Array {
	return Array{C.g_array_ref(a.c)}
}

pub fn (a Array) unref() {
	C.g_array_unref(a.c)
}

pub fn (a Array) get_element_size() u32 {
	return C.g_array_get_element_size(a.c)
}

pub fn (a Array) append_val(val voidptr) Array {
	cptr := C.g_array_append_val(a.c, val)
	return Array{cptr}
}

pub fn (a Array) append_vals(data voidptr, len u32) Array {
	cptr := C.g_array_append_vals(a.c, data, len)
	return Array{cptr}
}

pub fn (a Array) prepend_val(val voidptr) Array {
	cptr := C.g_array_prepend_val(a.c, val)
	return Array{cptr}
}

pub fn (a Array) prepend_vals(data voidptr, len u32) Array {
	cptr := C.g_array_prepend_vals(a.c, data, len)
	return Array{cptr}
}

pub fn (a Array) insert_val(i u32, val voidptr) Array {
	cptr := C.g_array_insert_val(a.c, i, val)
	return Array{cptr}
}

pub fn (a Array) insert_vals(i u32, data voidptr, len u32) Array {
	cptr := C.g_array_insert_vals(a.c, i, data, len)
	return Array{cptr}
}

pub fn (a Array) remove_index(index u32) Array {
	cptr := C.g_array_remove_index(a.c, index)
	return Array{cptr}
}

pub fn (a Array) remove_index_fast(index u32) Array {
	cptr := C.g_array_remove_index_fast(a.c, index)
	return Array{cptr}
}

pub fn (a Array) remove_range(index u32, len u32) Array {
	cptr := C.g_array_remove_range(a.c, index, len)
	return Array{cptr}
}

pub fn (a Array) sort(compare_fn CompareFunc) {
	C.g_array_sort(a.c, compare_fn)
}

pub fn (a Array) sort_with_data(compare_fn CompareDataFunc, user_data voidptr) {
	C.g_array_sort_with_data(a.c, compare_fn, user_data)
}

// TODO:
// pub fn (a Array) binary_search(target voidptr, compare_fn CompareFunc, out_match_index &u32) bool {
// 	return C.g_array_binary_search(a.c, target, compare_fn, out_match_index)
// }
pub fn (a Array) set_size(len u32) Array {
	cptr := C.g_array_set_size(a.c, len)
	return Array{cptr}
}

pub fn (a Array) set_clear_func(clear_fn DestroyNotify) {
	C.g_array_set_clear_func(a.c, clear_fn)
}

pub fn (a Array) free(free_segment bool) {
	C.g_array_free(a.c, free_segment)
}
