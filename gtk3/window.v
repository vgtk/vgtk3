module gtk3

fn C.gtk_window_set_default_size(&Widget, int, int)
fn C.gtk_window_set_position(&Widget, int)
fn C.gtk_window_set_title(&Widget, charptr)

pub struct Window {
	gtk_widget &Widget
}

pub fn new_window() Window {
	win := Window{C.gtk_window_new(C.GTK_WINDOW_TOPLEVEL)}
	return win
}

pub fn (w Window) add(widget Widgeter) {
	wi := widget.get_gtk_widget()
	C.gtk_container_add(w.gtk_widget, wi)
}

pub fn (w Window) show() {
	C.gtk_widget_show_all(w.gtk_widget)
}

pub fn (w Window) set_default_size(width int, height int) {
	C.gtk_window_set_default_size(w.gtk_widget, width, height)
}

pub fn (w Window) center() {
	C.gtk_window_set_position(w.gtk_widget, C.GTK_WIN_POS_CENTER)
}

pub fn (w Window) set_title(title string) {
	C.gtk_window_set_title(w.gtk_widget, title.str)
}

pub fn (w &Window) on(event_name string, handler fn(&Widget,Window)) int {
	return C.g_signal_connect(w.gtk_widget, event_name.str, handler, w)
}

pub fn (w &Window) get_gtk_widget() &Widget {
	return w.gtk_widget
}
