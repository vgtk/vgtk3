module gtk
#include <gtk/gtk.h>

pub type gtk__Widget GtkWidget
// Due to some current bug in V, the type must be named gtk__Widget

pub interface Widgeter {
	get_gtk_widget() &Widget
}

pub interface ContainerLiker {
	add(Widgeter)
}

// TODO: Remove this, when V bug is fixed
pub type gtk__BaselinePosition int 

const (
	BASELINE_POSITION_TOP    = BaselinePosition(C.GTK_BASELINE_POSITION_TOP)
	BASELINE_POSITION_CENTER = BaselinePosition(C.GTK_BASELINE_POSITION_CENTER)
	BASELINE_POSITION_BOTTOM = BaselinePosition(C.GTK_BASELINE_POSITION_BOTTOM)
)

// Struct definition
pub struct Alignment {
	widget &Widget
}

// Actual code
fn init() {
	gtk_init(0, [""].data) // TODO: use os library for arguments
}

pub fn new_alignment(xalign f32, yalign f32, xscale f32, yscale f32) Alignment {
	return Alignment{gtk_alignment_new(xalign, yalign, xscale, yscale)}
}

pub fn new_vbox(homogeneous bool, spacing int) VBox {
	return VBox{gtk_vbox_new(homogeneous, spacing)}
}

pub fn new_hbox(homogeneous bool, spacing int) HBox {
	return HBox{gtk_hbox_new(homogeneous, spacing)}
}

// This function is blocking!
pub fn main() {
	gtk_main()
}

pub fn main_quit() {
	gtk_main_quit()
}

pub fn add_custom_signal(widget Widgeter, name string, handler fn(&Widget,Widgeter)) int {
	w := widget.get_gtk_widget() // must be stored in a variable to avoid some weird C compilation bugs
	return g_signal_connect(w, name.str, handler, voidptr(&widget))
}

// Alignment struct

pub fn (h &Alignment) get_gtk_widget() &Widget {
	return h.widget
}

pub fn (h Alignment) add(widget Widgeter) {
	w := widget.get_gtk_widget()
	gtk_container_add(h.widget, w)
}
