module gtk

import gdk

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

pub fn (b Button) set_focus_on_click(focus_on_click bool) {
	gtk_button_set_focus_on_click(b.widget, focus_on_click)
}

pub fn (b Button) get_focus_on_click() bool {
	return gtk_widget_get_focus_on_click(b.widget)
}

pub fn (b Button) set_image(img_widget Widgeter) {
	wi := img_widget.get_gtk_widget()
	gtk_button_set_image(b.widget, wi)
}

pub fn (b Button) get_image() Widget {
	return gtk_button_get_image(b.widget)
}

pub fn (b Button) set_image_position(pos Position) {
	gtk_button_set_image_position(b.widget, pos)
}

pub fn (b Button) get_image_position() Position {
	return gtk_button_get_image_position(b.widget)
}

pub fn (b Button) set_always_show_image(always_show bool) {
	gtk_button_set_always_show_image(b.widget, always_show)
}

pub fn (b Button) get_always_show_image() bool {
	return gtk_button_get_always_show_image(b.widget)
}

pub fn (b Button) get_event_window() gdk.Window {
	cptr := gtk_button_get_event_window(b.widget)
	return gdk.Window{cptr}
}

/* INHERITED FROM WIDGET */
pub fn (b &Button) show() {
	gtk_widget_show(b.widget)
}

/* CUSTOM API's */
pub fn (b &Button) on(event_name string, handler fn(button Button, _data voidptr), data voidptr) int {
	return g_signal_connect(b.widget, event_name.str, handler, data)
}

pub fn (b &Button) get_gtk_widget() &Widget {
	return b.widget
}
