module gtk

pub struct Allocation {
	c &C.GtkAllocation
}

pub fn (a &Allocation) get_cptr() &C.GtkAllocation {
	return a.c
}
