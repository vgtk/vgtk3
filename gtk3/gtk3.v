module gtk3 

struct C.GtkWidget {}

interface Widgeter {
	get_gtk_widget() &C.GtkWidget
}

interface Container {
	add(Widgeter)
}

struct Window {
	gtk_widget &C.GtkWidget
}

struct Button {
	gtk_widget &C.GtkWidget
}

fn init() {
	C.gtk_init(0, [""].data) // TODO: use os library for arguments
}

pub fn new_window() Window {
	win := Window{
		gtk_widget: C.gtk_window_new(C.GTK_WINDOW_TOPLEVEL) // TODO: configurable flags
	}
	return win
}

pub fn new_button(label string) Button {
	btn := Button{
		gtk_widget: C.gtk_button_new_with_label(label.str)
	}
	return btn
}

// This function is blocking!
pub fn run() {
	C.gtk_main()
}

// Window struct
pub fn (w Window) add(widget Button) { // Need to do for every function due to a V bug.
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

fn (w Window) get_gtk_widget() &C.GtkWidget {
	return w.gtk_widget
}

// Button struct
pub fn (b Button) get_gtk_widget() &C.GtkWidget {
	return b.gtk_widget
}

pub fn (b Button) set_size(width int, height int) {
	C.gtk_widget_set_size_request(b.gtk_widget, width, height)
}