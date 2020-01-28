module gtk

pub struct WidgetPath {
	c &GtkWidgetPath
}

pub fn (wp &WidgetPath) get_cptr() &GtkWidgetPath {
	return wp.c
}
