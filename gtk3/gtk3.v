module gtk3 
#include <gtk/gtk.h>

struct C.GtkWidget {}
type gtk3__Widget C.GtkWidget
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

pub struct Window {
	gtk_widget &Widget
}

pub struct Button {
	gtk_widget &Widget
}

pub struct Entry {
	gtk_widget &Widget
}

pub struct MenuBar {
	gtk_widget &Widget
}

pub struct Menu {
	gtk_widget &Widget
}

pub struct MenuItem {
	gtk_widget &Widget
}

// Actual code
fn init() {
	C.gtk_init(0, [""].data) // TODO: use os library for arguments
}

pub fn new_window() Window {
	win := Window{
		gtk_widget: &Widget(C.gtk_window_new(C.GTK_WINDOW_TOPLEVEL)) // TODO: configurable flags
	}
	return win
}

pub fn new_button(label string) Button {
	btn := Button{
		gtk_widget: &Widget(C.gtk_button_new_with_label(label.str))
	}
	return btn
}

pub fn new_entry() Entry {
	btn := Entry{
		gtk_widget: &Widget(C.gtk_entry_new())
	}
	return btn
}

pub fn new_alignment(xalign f32, yalign f32, xscale f32, yscale f32) Alignment {
	align := Alignment{
		gtk_widget: &Widget(C.gtk_alignment_new(xalign, yalign, xscale, yscale))
	}
	return align
}

pub fn new_vbox(homogeneous bool, spacing int) VBox {
	vbox := VBox{
		gtk_widget: &Widget(C.gtk_vbox_new(homogeneous, spacing))
	}
	return vbox
}

pub fn new_hbox(homogeneous bool, spacing int) HBox {
	hbox := HBox{
		gtk_widget: &Widget(C.gtk_hbox_new(homogeneous, spacing))
	}
	return hbox
}

pub fn new_menu_bar() MenuBar {
	bar := MenuBar{
		gtk_widget: &Widget(C.gtk_menu_bar_new())
	}
	return bar
}

pub fn new_menu() Menu {
	menu := Menu{
		gtk_widget: &Widget(C.gtk_menu_new())
	}
	return menu
}

pub fn new_menu_item_with_label(label string) MenuItem {
	item := MenuItem{
		gtk_widget: &Widget(C.gtk_menu_item_new_with_label(label.str))
	}
	return item
}

// This function is blocking!
pub fn main() {
	C.gtk_main()
}

pub fn main_quit() {
	C.gtk_main_quit()
}

pub fn add_custom_signal(widget Widgeter, name string, handler fn(&C.GtkWidget,Widgeter)) {
	w := widget.get_gtk_widget() // must be stored in a variable to avoid some weird C compilation bugs
	C.g_signal_connect(w, name.str, handler, voidptr(&widget))
}

// Alignment struct

pub fn (h &Alignment) get_gtk_widget() &Widget {
	return h.gtk_widget
}

pub fn (h Alignment) add(widget Widgeter) {
	w := widget.get_gtk_widget()
	C.gtk_container_add(h.gtk_widget, w)
}

// VBox struct

pub fn (v &VBox) get_gtk_widget() &Widget {
	return v.gtk_widget
}

pub fn (v VBox) add(widget Widgeter) {
	w := widget.get_gtk_widget()
	C.gtk_container_add(v.gtk_widget, w)
}

// HBox struct

pub fn (h &HBox) get_gtk_widget() &Widget {
	return h.gtk_widget
}

pub fn (h HBox) add(widget Widgeter) {
	w := widget.get_gtk_widget()
	C.gtk_container_add(h.gtk_widget, w)
}