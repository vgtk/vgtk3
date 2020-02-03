module gtk

import glib

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

pub fn (app Application) add_window(window Window) {
	window_ := window.get_gtk_widget()
	gtk_application_add_window(app.c, window_)
}

pub fn (app Application) remove_window(window Window) {
	gtk_application_remove_window(app.c, window.c)
}

pub fn (app Application) get_windows() glib.List {
	return glib.List{gtk_application_get_windows(app.c)}
}

pub fn (app Application) get_window_by_id(id u32) Window {
	window := gtk_application_get_window_by_id(app.c, id)
	return to_window(window)
}

pub fn (app Application) get_active_window() Window {
	window := gtk_application_get_active_window(app.c)
	return to_window(window)
}

pub fn (app Application) inhibit(window Window, flags ApplicationInhibitFlags, reason string) u32 {
	return gtk_application_inhibit(app.c, window.c, flags, reason.str)
}

pub fn (app Application) uninhibit(cookie u32) {
	gtk_application_uninhibit(app.c, cookie)
}

pub fn (app Application) is_inhibited(flags ApplicationInhibitFlags) bool {
	return gtk_application_is_inhibited(app.c, flags)
}

pub fn (app Application) prefers_app_menu() bool {
	return gtk_application_prefers_app_menu(app.c)
}

pub fn (app Application) get_app_menu() &GMenuModel {
	return gtk_application_get_app_menu(app.c)
}

pub fn (app Application) set_app_menu(app_menu &GMenuModel) {
	gtk_application_set_app_menu(app.c, app_menu)
}

pub fn (app Application) get_menubar() &GMenuModel {
	return gtk_application_get_menubar(app.c)
}

pub fn (app Application) set_menubar(menubar &GMenuModel) {
	gtk_application_set_menubar(app.c, menubar)
}

pub fn (app Application) get_menu_by_id(id string) &GMenu {
	return gtk_application_get_menu_by_id(app.c, id.str)
}

pub fn (app Application) list_action_descriptions() []string {
	list_action := gtk_application_list_action_descriptions(app.c)
	return carray_string_to_array_string(list_action)
}

pub fn (app Application) get_accels_for_action(detailed_action_name string) []string {
	accels := gtk_application_get_accels_for_action(app.c, detailed_action_name.str)
	return carray_string_to_array_string(accels)
}

pub fn (app Application) set_accels_for_action(detailed_action_name string, accels []string) {
	gtk_application_set_accels_for_action(app.c, detailed_action_name.str, accels.data)
}

pub fn (app Application) get_actions_for_accel(accel string) []string {
	actions := gtk_application_get_actions_for_accel(app.c, accel.str)
	return carray_string_to_array_string(actions)
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
