module gtk

pub struct Button {
	widget &Widget
}

pub fn new_button(label string) Button {
	return Button{gtk_button_new_with_label(label.str)}
}

pub fn (b &Button) get_gtk_widget() &Widget {
	return b.widget
}

pub fn (b Button) set_size(width int, height int) {
	gtk_widget_set_size_request(b.widget, width, height)
}

/*
pub fn (b &Button) add_on_clicked(handler fn(&C.GtkWidget,[]voidptr), data voidptr) int {
	mut arr := [voidptr(b), data]
	return C.g_signal_connect(b.gtk_widget, "clicked", handler, &arr)
}
*/
pub fn (b &Button) on(event_name string, handler fn(&Widget,Button)) int {
	return g_signal_connect(b.widget, event_name.str, handler, b)
}

pub fn (b Button) set_label(label string) {
	gtk_button_set_label(b.widget, label.str)
}

pub fn (b Button) get_label() string {
	return tos3(gtk_button_get_label(b.widget))
}
