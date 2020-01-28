module gtk

pub struct Allocation {
	c &GtkAllocation
}

pub fn (a &Allocation) get_cptr() &GtkAllocation {
	return a.c
}
