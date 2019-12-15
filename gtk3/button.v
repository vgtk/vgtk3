module gtk3

fn C.gtk_button_set_label(&C.GtkWidget, voidptr)
fn C.gtk_button_get_label(&C.GtkWidget) voidptr

pub struct Button {
	gtk_widget &Widget
}

pub fn new_button(label string) Button {
	btn := Button{
		gtk_widget: &Widget(C.gtk_button_new_with_label(label.str))
	}
	return btn
}

pub fn (b &Button) get_gtk_widget() &Widget {
	return b.gtk_widget
}

pub fn (b Button) set_size(width int, height int) {
	C.gtk_widget_set_size_request(b.gtk_widget, width, height)
}

/*
pub fn (b &Button) add_on_clicked(handler fn(&C.GtkWidget,[]voidptr), data voidptr) int {
	mut arr := [voidptr(b), data]
	return C.g_signal_connect(b.gtk_widget, "clicked", handler, &arr)
}
*/
pub fn (b &Button) on(event_name string, handler fn(&Widget,Button)) int {
	return C.g_signal_connect(b.gtk_widget, event_name.str, handler, b)
}

pub fn (b Button) set_label(label string) {
	C.gtk_button_set_label(b.gtk_widget, label.str)
}

pub fn (b Button) get_label() string {
	return cstring_to_vstring(C.gtk_button_get_label(b.gtk_widget))
}
