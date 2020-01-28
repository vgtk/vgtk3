module gtk

fn carray_string_to_array_string(arr &charptr) []string {
    mut arr_str := []string
    if isnil(arr) { return arr_str }
    mut i := 0
    for {
        elem := byteptr(arr[i])
        if elem == 0 { break }
        arr_str << tos_clone(elem)
        i++
    }
    free(arr)
    return arr_str
}
