module gtk

pub type ResizeMode int

const (
	RESIZE_PARENT    = ResizeMode(C.GTK_RESIZE_PARENT)
	RESIZE_QUEUE     = ResizeMode(C.GTK_RESIZE_QUEUE)
	RESIZE_IMMEDIATE = ResizeMode(C.GTK_RESIZE_IMMEDIATE)
)

pub struct Container {
	c &GtkContainer
}

pub fn (c &Container) add(widget Widgeter) {
	wgt := widget.get_gtk_widget()
	gtk_container_add(c.c, wgt)
}

pub fn (c &Container) set_border_width(border_width int) {
	gtk_container_set_border_width(c.c, border_width)
}
