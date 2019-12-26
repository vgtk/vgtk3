module gtk

/* VBox */

pub struct VBox {
	widget &Widget
}

pub fn (v &VBox) get_gtk_widget() &Widget {
	return v.widget
}

pub fn (v VBox) add(widget Widgeter) {
	w := widget.get_gtk_widget()
	gtk_container_add(v.widget, w)
}

pub fn (v VBox) pack_start(widget Widgeter, expand bool, fill bool, padding int) {
	w := widget.get_gtk_widget()
	gtk_box_pack_start(v.widget, w, expand, fill, padding)
}

pub fn (v VBox) show() {
	gtk_widget_show(v.widget)
}

 /* HBox */ 

pub struct HBox {
	widget &Widget
}

pub fn (h &HBox) get_gtk_widget() &Widget {
	return h.widget
}

pub fn (h HBox) add(widget Widgeter) {
	w := widget.get_gtk_widget()
	gtk_container_add(h.widget, w)
}

pub fn (h HBox) pack_start(widget Widgeter, expand bool, fill bool, padding int) {
	w := widget.get_gtk_widget()
	gtk_box_pack_start(h.widget, w, expand, fill, padding)
}

pub fn (h HBox) show() {
	gtk_widget_show(h.widget)
}
