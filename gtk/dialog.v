module gtk

pub enum DialogFlags {
	modal               = 1
	destroy_with_parent = 2
	use_header_bar      = 4
}

pub enum ResponseType {
	_none        = -1
	reject       = -2
	accept       = -3
	delete_event = -4
	ok           = -5
	cancel       = -6
	close        = -7
	yes          = -8
	no           = -9
	apply        = -10
	help         = -11
}

pub struct Dialog {
	c &GtkWidget
}

pub fn new_dialog() Dialog {
	return Dialog{gtk_dialog_new()}
}

pub fn new_dialog_from_parent(title string, parent Window, flags DialogFlags) Dialog {
	parent_ := parent.get_gtk_widget()
	return Dialog{gtk_dialog_new_with_buttons(title.str, parent_, flags, 0, 0)}
}

// TODO: GtkWidget * gtk_dialog_new_with_buttons (const gchar *title, GtkWindow *parent, GtkDialogFlags flags, const gchar *first_button_text, ...)

pub fn (d Dialog) run() ResponseType {
	return gtk_dialog_run(d.c)
}

pub fn (d Dialog) response(response_id ResponseType) {
	gtk_dialog_response(d.c, response_id)
}

pub fn (d Dialog) add_button(button_text string, response_id ResponseType) Button {
	return Button{gtk_dialog_add_button(d.c, button_text.str, response_id)}
}

// TODO: void gtk_dialog_add_buttons (GtkDialog *dialog, const gchar *first_button_text, ...)

pub fn (d Dialog) add_action_widget(child Widgeter, response_id ResponseType) {
	child_ := child.get_gtk_widget()
	gtk_dialog_add_action_widget(d.c, child_, response_id)
}

pub fn (d Dialog) set_default_response(response_id ResponseType) {
	gtk_dialog_set_default_response(d.c, response_id)
}

pub fn (d Dialog) set_response_sensitive(response_id ResponseType, setting bool) {
	gtk_dialog_set_response_sensitive(d.c, response_id, setting)
}

pub fn (d Dialog) get_response_for_widget(widget Widgeter) int {
	widget_ := widget.get_gtk_widget()
	return gtk_dialog_get_response_for_widget(d.c, widget_)
}

pub fn (d Dialog) get_widget_for_response(response_id ResponseType) &Widget {
	widget := gtk_dialog_get_widget_for_response(d.c, response_id)
	if widget == 0 { return 0 }
	return &Widget{widget}
}

pub fn (d Dialog) get_content_area() Box {
	widget := gtk_dialog_get_content_area(d.c)
	return Box{widget}
}

pub fn (d Dialog) get_header_bar() &Widget {
	widget := gtk_dialog_get_header_bar(d.c)
	if widget == 0 { return 0 }
	return &Widget{widget}
}

/* INHERITED FROM WIDGET */

pub fn (d Dialog) destroy() {
	gtk_widget_destroy(d.c)
}

pub fn (d Dialog) in_destruction() bool {
	return gtk_widget_in_destruction(d.c)
}

pub fn (d Dialog) destroyed(widget Widgeter) {
	wgt := widget.get_gtk_widget()
	gtk_widget_destroyed(d.c, wgt)
}

pub fn (d Dialog) unparent() {
	gtk_widget_unparent(d.c)
}

pub fn (d Dialog) show() {
	gtk_widget_show(d.c)
}

pub fn (d Dialog) show_now() {
	gtk_widget_show_now(d.c)
}

pub fn (d Dialog) hide() {
	gtk_widget_hide(d.c)
}

pub fn (d Dialog) show_all() {
	gtk_widget_show_all(d.c)
}

pub fn (d Dialog) map() {
	gtk_widget_map(d.c)
}

pub fn (d Dialog) unmap() {
	gtk_widget_unmap(d.c)
}

pub fn (d Dialog) realize() {
	gtk_widget_realize(d.c)
}

pub fn (d Dialog) unrealize() {
	gtk_widget_unrealize(d.c)
}

pub fn (d Dialog) queue_draw() {
	gtk_widget_queue_draw(d.c)
}

pub fn (d Dialog) queue_resize() {
	gtk_widget_queue_resize(d.c)
}

pub fn (d Dialog) queue_resize_no_redraw() {
	gtk_widget_queue_resize_no_redraw(d.c)
}

pub fn (d Dialog) queue_allocate() {
	gtk_widget_queue_allocate(d.c)
}

pub fn (d Dialog) get_scale_factor() int {
	return gtk_widget_get_scale_factor(d.c)
}

pub fn (d Dialog) remove_tick_callback(id u32) {
	gtk_widget_remove_tick_callback(d.c, id)
}

pub fn (d Dialog) can_activate_accel(signal_id int) bool {
	return gtk_widget_can_activate_accel(d.c, signal_id)
}

pub fn (d Dialog) activate() bool {
	return gtk_widget_activate(d.c)
}

pub fn (d Dialog) is_focus() bool {
	return gtk_widget_is_focus(d.c)
}

pub fn (d Dialog) grab_focus() {
	gtk_widget_grab_focus(d.c)
}

pub fn (d Dialog) grab_default() {
	gtk_widget_grab_default(d.c)
}

pub fn (d Dialog) set_name(name string) {
	gtk_widget_set_name(d.c, name.str)
}

pub fn (d Dialog) set_sensitive(sensitive bool) {
	gtk_widget_set_sensitive(d.c, sensitive)
}

pub fn (d Dialog) set_parent(parent Widgeter) {
	parent_ := parent.get_gtk_widget()
	gtk_widget_set_parent(d.c, parent_)
}

pub fn (d Dialog) set_events(events int) {
	gtk_widget_set_events(d.c, events)
}

pub fn (d Dialog) get_events() int {
	return gtk_widget_get_events(d.c)
}

pub fn (d Dialog) add_events(events int) {
	gtk_widget_add_events(d.c, events)
}

pub fn (d Dialog) get_toplevel() &GtkWidget {
	return gtk_widget_get_toplevel(d.c)
}

pub fn (d Dialog) get_ancestor(widget_type GType) &GtkWidget {
	return gtk_widget_get_ancestor(d.c, widget_type)
}

pub fn (d Dialog) is_ancestor(ancestor Widgeter) bool {
	ancestor_ := ancestor.get_gtk_widget()
	return gtk_widget_is_ancestor(d.c, ancestor_)
}

pub fn (d Dialog) translate_coordinates(dest_widget Widgeter, x , y int) (int, int) {
	dest_widget_ := dest_widget.get_gtk_widget()
	out_x := 0
	out_y := 0
	gtk_widget_translate_coordinates(d.c, dest_widget_, x, y, &out_x, &out_y)
	return out_x, out_y
}

pub fn (d Dialog) hide_on_delete() bool {
	return gtk_widget_hide_on_delete(d.c)
}

pub fn (d Dialog) set_direction(direction TextDirection) {
	gtk_widget_set_direction(d.c, direction)
}

pub fn (d Dialog) get_direction() TextDirection {
	return TextDirection(gtk_widget_get_direction(d.c))
}

pub fn (d Dialog) set_default_direction(direction TextDirection) {
	gtk_widget_set_default_direction(direction)
}

pub fn (d Dialog) get_default_direction() TextDirection {
	return TextDirection(gtk_widget_get_default_direction())
}

/* INHERITED FROM WINDOW */

pub fn (d Dialog) set_default_size(width, height int)  {
	gtk_window_set_default_size(d.c, width, height)
}

pub fn (d Dialog) get_title() string {
	return tos3(gtk_window_get_title(d.c))
}

/* IMPLEMENTING Widgeter */

pub fn (d &Dialog) get_gtk_widget() &GtkWidget {
	return d.c
}

/* CUSTOM API's */
pub fn (d &Dialog) on(event_name string, handler fn(window Dialog, _data voidptr), data voidptr) int {
	return g_signal_connect(d.c, event_name.str, handler, 0)
}
