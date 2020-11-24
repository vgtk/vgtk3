module gtk

pub struct ScrolledWindow {
	c &C.GtkWidget
}

pub fn new_scrolled_window() ScrolledWindow {
	return ScrolledWindow{C.gtk_scrolled_window_new(0, 0)}
}

pub fn (b ScrolledWindow) add(widget Widgeter) {
	wgt := widget.get_gtk_widget()
	C.gtk_container_add(b.c, wgt)
}

/* INHERITED FROM WIDGET */

pub fn (b &ScrolledWindow) show() {
	C.gtk_widget_show(b.c)
}

/* IMPLEMENTING Widgeter */

pub fn (b &ScrolledWindow) get_gtk_widget() &C.GtkWidget {
	return b.c
}

/* CUSTOM API's */
pub fn (b &ScrolledWindow) on(event_name string, handler fn(button ScrolledWindow, _data voidptr), data voidptr) int {
	return int(C.g_signal_connect(b.c, event_name.str, handler, data))
}
