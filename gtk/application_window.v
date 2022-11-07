module gtk

pub struct ApplicationWindow {
	c &C.GtkWidget
}

pub fn new_application_window(application Application) ApplicationWindow {
	return ApplicationWindow{C.gtk_application_window_new(application.c)}
}

pub fn (a ApplicationWindow) set_show_menubar(show_menubar bool) {
	C.gtk_application_window_set_show_menubar(a.c, show_menubar)
}

pub fn (a ApplicationWindow) get_show_menubar() bool {
	return C.gtk_application_window_get_show_menubar(a.c)
}

pub fn (a ApplicationWindow) get_id() u32 {
	return C.gtk_application_window_get_id(a.c)
}

/*
// TODO:
pub fn (a ApplicationWindow) set_help_overlay(help_overlay &C.GtkShortcutsWindow) {
	C.gtk_application_window_set_help_overlay(a.c, help_overlay)
}

// TODO:
pub fn (a ApplicationWindow) get_help_overlay() &C.GtkShortcutsWindow {
	return C.gtk_application_window_get_help_overlay(a.c)
}
*/
