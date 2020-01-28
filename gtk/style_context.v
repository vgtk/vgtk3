module gtk

pub struct StyleContext {
	c &GtkStyleContext
}

pub fn (sc &StyleContext) get_cptr() &GtkStyleContext {
	return sc.c
}
