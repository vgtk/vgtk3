module gtk

import gdk

pub enum WindowType {
	toplevel
	popup
}

pub enum WindowPosition {
	_none
	center
	mouse
	center_always
	center_on_parent
}

pub struct Window {
	widget &GtkWidget
}

pub fn new_window() Window {
	return Window{gtk_window_new(C.GTK_WINDOW_TOPLEVEL)}
}

pub fn new_window_type(type_ WindowType) Window {
	return Window{gtk_window_new(type_)}
}

pub fn (w Window) set_title(title string) {
	C.gtk_window_set_title(w.widget, title.str)
}

pub fn (w Window) set_wmclass(name, class string) {
	gtk_window_set_wmclass(w.widget, name.str, class.str)
}

pub fn (w Window) set_resizable(setting bool) {
	gtk_window_set_resizable(w.widget, setting)
}

pub fn (w Window) get_resizable() bool {
	return gtk_window_get_resizable(w.widget)
}

pub fn (w Window) activate_focus() bool {
	return gtk_window_activate_focus(w.widget)
}

pub fn (w Window) activate_default() bool {
	return gtk_window_activate_default(w.widget)
}

pub fn (w Window) set_modal(modal bool) {
	gtk_window_set_modal(w.widget, modal)
}

pub fn (w Window) set_default_size(width int, height int) {
	gtk_window_set_default_size(w.widget, width, height)
}

pub fn (w Window) set_default_geometry(width int, height int) {
	gtk_window_set_default_geometry(w.widget, width, height)
}

pub fn (w Window) set_gravity(gravity gdk.Gravity) {
	gtk_window_set_gravity(w.widget, gravity)
}

pub fn (w Window) get_gravity() gdk.Gravity {
	return gtk_window_get_gravity(w.widget)
}

pub fn (w Window) set_position(position WindowPosition) {
	gtk_window_set_position(w.widget, position)
}

pub fn (w Window) set_transient_for(parrent Window) {
	gtk_window_set_transient_for(w.widget, parrent.widget)
}

pub fn (w Window) set_attached_to(widget Widgeter) {
	wi := widget.get_gtk_widget()
	gtk_window_set_attached_to(w.widget, wi)
}

pub fn (w Window) set_destroy_with_parent(setting bool) {
	gtk_window_set_destroy_with_parent(w.widget, setting)
}

pub fn (w Window) set_hide_titlebar_when_maximized(setting bool) {
	gtk_window_set_hide_titlebar_when_maximized(w.widget, setting)
}

pub fn (w Window) get_default_size() (int, int) {
	width := 0
	height := 0
	gtk_window_get_default_size(w.widget, &width, &height)
	return width, height
}

pub fn (w Window) center() {
	gtk_window_set_position(w.widget, WindowPosition.center)
}

pub fn (w Window) get_title() string {
	return tos3(gtk_window_get_title(w.widget))
}

// GdkWindowTypeHint gtk_window_get_type_hint (GtkWindow *window)

pub fn (w Window) get_skip_taskbar_hint() bool {
	return gtk_window_get_skip_taskbar_hint(w.widget)
}

pub fn (w Window) get_skip_pager_hint() bool {
	return gtk_window_get_skip_pager_hint(w.widget)
}

pub fn (w Window) get_urgency_hint() bool {
	return gtk_window_get_urgency_hint(w.widget)
}

pub fn (w Window) get_accept_focus() bool {
	return gtk_window_get_accept_focus(w.widget)
}

pub fn (w Window) get_focus_on_map() bool {
	return gtk_window_get_focus_on_map(w.widget)
} 

// GtkWindowGroup * gtk_window_get_group (GtkWindow *window)

pub fn (w Window) has_group() bool {
	return gtk_window_has_group(w.widget)
}

pub fn (w Window) get_window_type() WindowType {
	return gtk_window_get_window_type(w.widget)
}

pub fn (w Window) move(x, y int) {
	gtk_window_move(w.widget, x, y)
}

pub fn (w Window) parse_geometry(geometry string) bool {
	return gtk_window_parse_geometry(w.widget, geometry.str)
}

pub fn (w Window) reshow_with_initial_size() {
	gtk_window_reshow_with_initial_size(w.widget)
}

pub fn (w Window) resize(width, height int) {
	gtk_window_resize(w.widget, width, height)
}

pub fn (w Window) resize_to_geometry(width, height int){
	gtk_window_resize_to_geometry(w.widget, width, height)
}

// TODO: void gtk_window_set_default_icon_list (GList *list)

// TODO: void gtk_window_set_default_icon (GdkPixbuf *icon)

pub fn (w Window) set_default_icon_from_file(filename string) bool {
	return gtk_window_set_default_icon_from_file(filename.str, 0)
}

pub fn (w Window) set_default_icon_name(name string) {
	gtk_window_set_default_icon_name(name.str)
}

// TODO: void gtk_window_set_icon (GtkWindow *window, GdkPixbuf *icon)

// TODO: void gtk_window_set_icon_list (GtkWindow *window, GList *list)

pub fn (w Window) set_icon_from_file(filename string) bool {
	return gtk_window_set_icon_from_file(w.widget, filename.str, 0)
}

pub fn (w Window) set_icon_name(name string) {
	gtk_window_set_icon_name(w.widget, name.str)
}

pub fn (w Window) set_auto_startup_notification(setting bool) {
	gtk_window_set_auto_startup_notification(setting)
}

pub fn (w Window) get_opacity() f32 {
	return gtk_window_get_opacity(w.widget)
}

pub fn (w Window) set_opacity(opacity f32) {
	gtk_window_set_opacity(w.widget, opacity)
}

pub fn (w Window) get_mnemonics_visible() bool {
	return gtk_window_get_mnemonics_visible(w.widget)
}

pub fn (w Window) set_mnemonics_visible(setting bool)  {
	gtk_window_set_mnemonics_visible(w.widget, setting)
}

pub fn (w Window) get_focus_visible() bool {
	return gtk_window_get_focus_visible(w.widget)
}

pub fn (w Window) set_focus_visible(setting bool) {
	gtk_window_set_focus_visible(w.widget, setting)
}

pub fn (w Window) set_has_resize_grip(value bool) {
	gtk_window_set_has_resize_grip(w.widget, value)
}

pub fn (w Window) get_has_resize_grip() bool {
	return gtk_window_get_has_resize_grip(w.widget)
}

pub fn (w Window) resize_grip_is_visible() bool {
	return gtk_window_resize_grip_is_visible(w.widget)
}

// gboolean gtk_window_get_resize_grip_area (GtkWindow *window, GdkRectangle *rect)

pub fn (w Window) get_application() &Application {
	cptr := gtk_window_get_application(w.widget)
	if cptr == 0 {
		return 0
	}
	return &Application{cptr}
}

pub fn (w Window) set_application(application Application) {
	gtk_window_set_application(w.widget, application.c)
}

pub fn (w Window) set_has_user_ref_count(setting bool) {
	gtk_window_set_has_user_ref_count(w.widget, setting)
}

pub fn (w Window) set_titlebar(widget Widgeter) {
	wgt := widget.get_gtk_widget()
	gtk_window_set_titlebar(w.widget, wgt)
}

pub fn (w Window) get_titlebar() &GtkWidget {
	return gtk_window_get_titlebar(w.widget)
}

pub fn (w Window) set_interactive_debugging(enable bool) {
	gtk_window_set_interactive_debugging(enable)
} 

/* INHERITED FROM CONTAINER */

pub fn (w Window) add(widget Widgeter) {
	wgt := widget.get_gtk_widget()
	gtk_container_add(w.widget, wgt)
}

pub fn (w Window) set_border_width(border_width int) {
	w.to_container().set_border_width(border_width)
}

/* INHERITED FROM WIDGET */ 

pub fn (w Window) show() {
	gtk_widget_show(w.widget)
}

pub fn (w Window) show_all() {
	gtk_widget_show_all(w.widget)
}

/* IMPLEMENTING WIDGETER */

pub fn (w &Window) get_gtk_widget() &GtkWidget {
	return w.widget
}

/* CUSTOM API's */
pub fn (w &Window) on(event_name string, handler fn(window Window, _data voidptr), data voidptr) int {
	return g_signal_connect(w.widget, event_name.str, handler, 0)
}

pub fn (w &Window) to_container() &Container {
	cptr := &GtkContainer(w.widget)
	return &Container{cptr}
}
