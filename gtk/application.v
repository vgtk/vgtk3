module gtk

pub type ApplicationFlags int

// TODO: Get the original value from C and move this to GIO
pub const (
	APPLICATION_FLAGS_NONE           = ApplicationFlags(0) /* C.G_APPLICATION_FLAGS_NONE */
	APPLICATION_IS_SERVICE           = ApplicationFlags(1) /* C.G_APPLICATION_IS_SERVICE */
	APPLICATION_IS_LAUNCHER          = ApplicationFlags(2) /* C.G_APPLICATION_IS_LAUNCHER */
	APPLICATION_HANDLES_OPEN         = ApplicationFlags(3) /* C.G_APPLICATION_HANDLES_OPEN */
	APPLICATION_HANDLES_COMMAND_LINE = ApplicationFlags(4) /* C.G_APPLICATION_HANDLES_COMMAND_LINE */
	APPLICATION_SEND_ENVIRONMENT     = ApplicationFlags(5) /* C.G_APPLICATION_SEND_ENVIRONMENT */
	APPLICATION_NON_UNIQUE           = ApplicationFlags(6) /* C.G_APPLICATION_NON_UNIQUE */
	APPLICATION_CAN_OVERRIDE_APP_ID  = ApplicationFlags(7) /* C.G_APPLICATION_CAN_OVERRIDE_APP_ID */
	APPLICATION_ALLOW_REPLACEMENT    = ApplicationFlags(8) /* C.G_APPLICATION_ALLOW_REPLACEMENT */
	APPLICATION_REPLACE              = ApplicationFlags(9) /* C.G_APPLICATION_REPLACE */
)

pub type ApplicationInhibitFlags int

pub const (
	APPLICATION_INHIBIT_LOGOUT  = ApplicationInhibitFlags(C.GTK_APPLICATION_INHIBIT_LOGOUT)
	APPLICATION_INHIBIT_SWITCH  = ApplicationInhibitFlags(C.GTK_APPLICATION_INHIBIT_SWITCH)
	APPLICATION_INHIBIT_SUSPEND = ApplicationInhibitFlags(C.GTK_APPLICATION_INHIBIT_SUSPEND)
	APPLICATION_INHIBIT_IDLE    = ApplicationInhibitFlags(C.GTK_APPLICATION_INHIBIT_IDLE)
)

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
	gtk_application_add_window(app.c, window.widget)
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
