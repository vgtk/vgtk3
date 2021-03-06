import glib

const (
	test_nums = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
		// more_nums = [ 8, 9, 7, 0, 3, 2, 5, 1, 4, 6 ]
)

fn test_list() {
	mut list := glib.new_list()
	for i := 0; i < 10; i++ {
		x := test_nums[i]
		list = list.append(voidptr(x))
	}
	list = list.reverse()
	for i := 0; i < 10; i++ {
		t := list.nth(u32(i))
		x := int(t.data())
		assert x == 9 - i
	}
	for i := 0; i < 10; i++ {
		l := list.nth(u32(i))
		pos := list.position(l)
		assert pos == i
	}
	list.free()
}

fn test_slist() {
	/*
	mut slist := glib.new_slist()
	for i := 0; i < 10; i++ {
		slist = slist.append(test_nums[i])
	}
	slist = slist.reverse()
	for i := 0; i < 10; i++ {
		st := slist.nth(u32(i))
		assert int(st.data()) == 9 - i
	}
	for i := 0; i < 10; i++ {
		s := slist.nth(u32(i))
		assert slist.position(s) == i
	}
	slist.free()
	*/
}
