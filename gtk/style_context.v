module gtk

pub struct StyleContext {
	c &C.GtkStyleContext
}

pub fn (sc &StyleContext) get_cptr() &C.GtkStyleContext {
	return sc.c
}
