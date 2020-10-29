module gtk
#include <gtk/gtk.h>

pub interface Widgeter {
	get_gtk_widget() &C.GtkWidget
}

pub interface ContainerLiker {
	add(Widgeter)
}

// Actual code
fn init() {
	C.gtk_init(0, [""].data) // TODO: use os library for arguments
}


// This function is blocking!
pub fn main() {
	C.gtk_main()
}

pub fn main_quit() {
	C.gtk_main_quit()
}

pub fn add_custom_signal(widget Widgeter, name string, handler fn(&C.GtkWidget,Widgeter)) int {
	w := widget.get_gtk_widget() // must be stored in a variable to avoid some weird C compilation bugs
	return int(C.g_signal_connect(voidptr(w), name.str, handler, voidptr(&widget)))
}

/* Castings */

pub fn to_widget(widget voidptr) &Widget {
	return &Widget(widget)
}

pub fn to_window(widget voidptr) Window {
	return Window{widget}
}
