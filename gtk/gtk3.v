module gtk
#include <gtk/gtk.h>

struct C.GtkWidget

pub type gtk__Widget GtkWidget
// Due to some current bug in V, the type must be named gtk3__Widget

pub interface Widgeter {
	get_gtk_widget() &Widget
}

pub interface Container {
	add(Widgeter)
}

// Struct definition
pub struct Alignment {
	gtk_widget &Widget
}

pub struct VBox {
	gtk_widget &Widget
}

pub struct HBox {
	gtk_widget &Widget
}

// Actual code
fn init() {
	C.gtk_init(0, [""].data) // TODO: use os library for arguments
}

pub fn new_alignment(xalign f32, yalign f32, xscale f32, yscale f32) Alignment {
	align := Alignment{gtk_alignment_new(xalign, yalign, xscale, yscale)}
	return align
}

pub fn new_vbox(homogeneous bool, spacing int) VBox {
	vbox := VBox{gtk_vbox_new(homogeneous, spacing)}
	return vbox
}

pub fn new_hbox(homogeneous bool, spacing int) HBox {
	hbox := HBox{gtk_hbox_new(homogeneous, spacing)}
	return hbox
}

// This function is blocking!
pub fn main() {
	C.gtk_main()
}

pub fn main_quit() {
	C.gtk_main_quit()
}

pub fn add_custom_signal(widget Widgeter, name string, handler fn(&Widget,Widgeter)) int {
	w := widget.get_gtk_widget() // must be stored in a variable to avoid some weird C compilation bugs
	return g_signal_connect(w, name.str, handler, voidptr(&widget))
}

// Alignment struct

pub fn (h &Alignment) get_gtk_widget() &Widget {
	return h.gtk_widget
}

pub fn (h Alignment) add(widget Widgeter) {
	w := widget.get_gtk_widget()
	gtk_container_add(h.gtk_widget, w)
}

// VBox struct

pub fn (v &VBox) get_gtk_widget() &Widget {
	return v.gtk_widget
}

pub fn (v VBox) add(widget Widgeter) {
	w := widget.get_gtk_widget()
	gtk_container_add(v.gtk_widget, w)
}

// HBox struct

pub fn (h &HBox) get_gtk_widget() &Widget {
	return h.gtk_widget
}

pub fn (h HBox) add(widget Widgeter) {
	w := widget.get_gtk_widget()
	gtk_container_add(h.gtk_widget, w)
}
