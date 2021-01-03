module gtk

pub struct ButtonBox {
	c &C.GtkWidget
}

pub fn new_hbutton_box() ButtonBox {
	return ButtonBox{C.gtk_hbutton_box_new()}
}

pub fn new_vbutton_box() ButtonBox {
	return ButtonBox{C.gtk_vbutton_box_new()}
}

pub fn (b ButtonBox) add(widget Widgeter) {
	wgt := widget.get_gtk_widget()
	C.gtk_container_add(b.c, wgt)
}

pub fn (b ButtonBox) pack_start(child Widgeter, expand bool, fill bool, padding u32) {
	child_ := child.get_gtk_widget()
	C.gtk_box_pack_start(voidptr(b.c), voidptr(child_), expand, fill, padding)
}

pub fn (b ButtonBox) pack_end(child Widgeter, expand bool, fill bool, padding u32) {
	child_ := child.get_gtk_widget()
	C.gtk_box_pack_end(voidptr(b.c), voidptr(child_), expand, fill, padding)
}

pub fn (b ButtonBox) set_layout(layout ButtonBoxStyle) {
	C.gtk_button_box_set_layout(b.c, layout)
}

pub fn (b ButtonBox) set_child_secondary(child Widget, is_secondary bool) {
	C.gtk_button_box_set_child_secondary(b.c, child.c, is_secondary)
}

pub fn (b ButtonBox) set_child_non_homogeneous(child Widget, is_secondary bool) {
	C.gtk_button_box_set_child_non_homogeneous(b.c, child.c, is_secondary)
}

// INHERITED FROM WIDGET
pub fn (b &ButtonBox) show() {
	C.gtk_widget_show(b.c)
}

// IMPLEMENTING Widgeter
pub fn (b &ButtonBox) get_gtk_widget() &C.GtkWidget {
	return b.c
}

// CUSTOM API's
pub fn (b &ButtonBox) on(event_name string, handler fn (ButtonBox, voidptr), data voidptr) int {
	return int(C.g_signal_connect(b.c, event_name.str, handler, data))
}
