module gtk3 

struct C.GtkWidget {
	
}

interface Widgeter {
	set_size(int,int)
}

interface Container {
	add(Widgeter)
}

struct Window {
	gtk_widget &C.GtkWidget
}

struct Button {
	gtk_widget &C.GtkWidget
	pub mut:
		parent ?Container
}

fn init() {
	C.gtk_init(0, [""].data)
}

pub fn new_window() Window {
	win := Window{
		gtk_widget: C.gtk_window_new(C.GTK_WINDOW_TOPLEVEL)
	}
	return win
}

// This function is blocking!
pub fn run() {
	C.gtk_main()
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