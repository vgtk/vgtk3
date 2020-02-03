module gtk

pub struct ApplicationWindow {
	c &GtkWidget
}

pub fn new_application_window(application Application) ApplicationWindow {
	return ApplicationWindow{gtk_application_window_new(application.c)}
}

pub fn (a ApplicationWindow) set_show_menubar(show_menubar bool) {
	gtk_application_window_set_show_menubar(a.c, show_menubar)
}

pub fn (a ApplicationWindow) get_show_menubar() bool {
	return gtk_application_window_get_show_menubar(a.c)
}

pub fn (a ApplicationWindow) get_id() u32 {
	return gtk_application_window_get_id(a.c)
}

// TODO: 
pub fn (a ApplicationWindow) set_help_overlay(help_overlay &GtkShortcutsWindow) {
	gtk_application_window_set_help_overlay(a.c, help_overlay)
}

// TODO:
pub fn (a ApplicationWindow) get_help_overlay() &GtkShortcutsWindow {
	return gtk_application_window_get_help_overlay(a.c)
}




// 
