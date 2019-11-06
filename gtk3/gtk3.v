module gtk3 

struct C.GtkWidget {}

pub interface Widgeter {
	get_gtk_widget() &C.GtkWidget
}

pub interface Container {
	add(Widgeter)
}

pub struct Alignment {
	gtk_widget &C.GtkWidget
}

pub struct VBox {
	gtk_widget &C.GtkWidget
}

pub struct Window {
	gtk_widget &C.GtkWidget
}

pub struct Button {
	gtk_widget &C.GtkWidget
}

fn init() {
	C.gtk_init(0, [""].data) // TODO: use os library for arguments
}

pub fn new_window() Window {
	win := &Window{
		gtk_widget: C.gtk_window_new(C.GTK_WINDOW_TOPLEVEL) // TODO: configurable flags
	}
	return win
}

pub fn new_button(label string) Button {
	btn := &Button{
		gtk_widget: C.gtk_button_new_with_label(label.str)
	}
	return btn
}

pub fn new_alignment(xalign f32, yalign f32, xscale f32, yscale f32) Alignment {
	align := &Alignment{
		gtk_widget: C.gtk_alignment_new(xalign, yalign, xscale, yscale)
	}
	return align
}

pub fn new_vbox(homogeneous bool, spacing int) VBox {
	vbox := &VBox{
		gtk_widget: C.gtk_vbox_new(homogeneous, spacing)
	}
	return vbox
}

// This function is blocking!
pub fn run() {
	C.gtk_main()
}

pub fn quit() {
	C.gtk_main_quit()
}


// Window struct
pub fn (w Window) add(widget Widgeter) {
	C.gtk_container_add(w.gtk_widget, widget.get_gtk_widget())
}

pub fn (w Window) show() {
	C.gtk_widget_show_all(w.gtk_widget)
}

pub fn (w Window) set_size(width int, height int) {
	C.gtk_window_set_default_size(w.gtk_widget, width, height)
}

pub fn (w Window) center() {
	C.gtk_window_set_position(w.gtk_widget, C.GTK_WIN_POS_CENTER)
}

pub fn (w Window) set_title(title string) {
	C.gtk_window_set_title(w.gtk_widget, title.str)
}

pub fn (w &Window) add_on_destroy(handler fn(&C.GtkWidget,Window)) int {
	return C.g_signal_connect(w.gtk_widget, "destroy", handler, w)
}

fn (w &Window) get_gtk_widget() &C.GtkWidget {
	return w.gtk_widget
}

// Button struct
pub fn (b &Button) get_gtk_widget() &C.GtkWidget {
	return b.gtk_widget
}

pub fn (b Button) set_size(width int, height int) {
	C.gtk_widget_set_size_request(b.gtk_widget, width, height)
}

pub fn (b &Button) add_on_clicked(handler fn(&C.GtkWidget,&Button)) int {
	return C.g_signal_connect(b.gtk_widget, "clicked", handler, b)
}

pub fn (b Button) set_label(label string) {
	C.gtk_button_set_label(b.gtk_widget, label.str)
}

pub fn (b Button) get_label() string {
	return tos3(C.gtk_button_get_label(b.gtk_widget))
}

// Alignment struct

pub fn (h &Alignment) get_gtk_widget() &C.GtkWidget {
	return h.gtk_widget
}

pub fn (h Alignment) add(widget Widgeter) {
	C.gtk_container_add(h.gtk_widget, widget.get_gtk_widget())
}

// VBox struct

pub fn (v &VBox) get_gtk_widget() &C.GtkWidget {
	return v.gtk_widget
}

pub fn (v VBox) add(widget Widgeter) {
	C.gtk_container_add(v.gtk_widget, widget.get_gtk_widget())
}