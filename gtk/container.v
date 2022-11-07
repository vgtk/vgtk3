module gtk

pub enum ResizeMode {
	parent = C.GTK_RESIZE_PARENT
	queue = C.GTK_RESIZE_QUEUE
	immediate = C.GTK_RESIZE_IMMEDIATE
}

pub struct Container {
	c &C.GtkWidget //&C.GtkContainer
}

pub fn (c &Container) add(widget IWidget) {
	wgt := widget.get_gtk_widget()
	C.gtk_container_add(c.c, wgt)
}

pub fn (c &Container) set_border_width(border_width int) {
	C.gtk_container_set_border_width(c.c, border_width)
}
