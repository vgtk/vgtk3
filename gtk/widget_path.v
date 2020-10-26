module gtk

pub struct WidgetPath {
	c &C.GtkWidgetPath
}

pub fn (wp &WidgetPath) get_cptr() &C.GtkWidgetPath {
	return wp.c
}
