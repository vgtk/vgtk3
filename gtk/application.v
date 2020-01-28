module gtk

pub enum ApplicationFlags {
	flags_none
	is_service
	is_launcher
	handles_open
	handles_command_line
	send_environment
	non_unique
	can_override_app_id
	allow_replacement
	replace
}

pub enum ApplicationInhibitFlags {
	logout  = 1
	@switch = 2
	suspend = 4
	idle    = 8
}

pub struct Application {
	c &GtkApplication
}

pub fn new_application(app_id string, flags ApplicationFlags) Application {
	app := gtk_application_new(app_id.str, flags)
	return Application{app}
}

pub fn (app Application) new_window() Window {
	cptr := gtk_application_window_new(app.c)
	return Window{cptr}
}

pub fn (app &Application) add_window(window Window) {
	window_ := window.get_gtk_widget()
	gtk_application_add_window(app.c, window_)
}

/* INHERITED FROM GAPPLICATION */
pub fn (app Application) run(argv []string) int {
	return g_application_run(app.c, argv.len, argv.data)
}

/* INHERITED FROM GOBJECT */
pub fn (app Application) unref() {
	g_object_unref(app.c)
}

pub fn (app Application) on(event_name string, handler fn(app Application, _data voidptr), data voidptr) u32 {
	return g_signal_connect(app.c, event_name.str, handler, data)
}
