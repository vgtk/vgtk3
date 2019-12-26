module gtk

pub struct Button {
	widget &Widget
}

pub fn new_button() Button {
	return Button{gtk_button_new()}
}

pub fn new_button_with_label(label string) Button {
	return Button{gtk_button_new_with_label(label.str)}
}

pub fn new_button_with_mnemonic(label string) Button {
	return Button{gtk_button_new_with_mnemonic(label.str)}
}

pub fn new_button_from_icon_name(icon_name string, icon_size IconSize) Button {
	return Button{gtk_button_new_from_icon_name(icon_name.str, icon_size)}
}

pub fn (b Button) clicked() {
	gtk_button_clicked(b.widget)
}

pub fn (b Button) set_relief(relief ReliefStyle) {
	gtk_button_set_relief(b.widget, relief)
}

pub fn (b Button) get_relief() ReliefStyle {
	return ReliefStyle(gtk_button_get_relief(b.widget))
}

pub fn (b Button) get_label() string {
	return tos3(gtk_button_get_label(b.widget))
}

pub fn (b Button) set_label(label string) {
	gtk_button_set_label(b.widget, label.str)
}

pub fn (b Button) set_size(width int, height int) {
	gtk_widget_set_size_request(b.widget, width, height)
}

pub fn (b Button) get_use_underline() bool {
	return gtk_button_get_use_underline(b.widget)
}

pub fn (b Button) set_use_underline(setting bool) {
	gtk_button_set_use_underline(b.widget, setting)
}

pub fn (b &Button) on(event_name string, handler fn(&Widget,Button)) int {
	return g_signal_connect(b.widget, event_name.str, handler, b)
}

////////////////////// CUSTOM API's //////////////////////
pub fn (b &Button) get_gtk_widget() &Widget {
	return b.widget
}
