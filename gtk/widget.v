module gtk

import gdk
import gio

pub enum Align {
	fill
	start
	end
	center
	baseline
}

pub struct Widget {
	c &GtkWidget
}

pub fn (w Widget) destroy() {
	gtk_widget_destroy(w.c)
}

pub fn (w Widget) in_destruction() bool {
	return gtk_widget_in_destruction(w.c)
}

pub fn (w Widget) destroyed(widget Widgeter) {
	wgt := widget.get_gtk_widget()
	gtk_widget_destroyed(w.c, wgt)
}

pub fn (w Widget) unparent() {
	gtk_widget_unparent(w.c)
}

pub fn (w Widget) show() {
	gtk_widget_show(w.c)
}

pub fn (w Widget) show_now() {
	gtk_widget_show_now(w.c)
}

pub fn (w Widget) hide() {
	gtk_widget_hide(w.c)
}

pub fn (w Widget) show_all() {
	gtk_widget_show_all(w.c)
}

pub fn (w Widget) map() {
	gtk_widget_map(w.c)
}

pub fn (w Widget) unmap() {
	gtk_widget_unmap(w.c)
}

pub fn (w Widget) realize() {
	gtk_widget_realize(w.c)
}

pub fn (w Widget) unrealize() {
	gtk_widget_unrealize(w.c)
}

// TODO: void gtk_widget_draw (GtkWidget *widget, cairo_t *cr)

pub fn (w Widget) queue_draw() {
	gtk_widget_queue_draw(w.c)
}

pub fn (w Widget) queue_resize() {
	gtk_widget_queue_resize(w.c)
}

pub fn (w Widget) queue_resize_no_redraw() {
	gtk_widget_queue_resize_no_redraw(w.c)
}

pub fn (w Widget) queue_allocate() {
	gtk_widget_queue_allocate(w.c)
}

// TODO: GdkFrameClock * gtk_widget_get_frame_clock (GtkWidget *widget)

pub fn (w Widget) get_scale_factor() int {
	return gtk_widget_get_scale_factor(w.c)
}

pub fn (w Widget) remove_tick_callback(id u32) {
	gtk_widget_remove_tick_callback(w.c, id)
}

// TODO: void gtk_widget_size_allocate (GtkWidget *widget, GtkAllocation *allocation)

// TODO: void gtk_widget_size_allocate_with_baseline (GtkWidget *widget, GtkAllocation *allocation, gint baseline)

// TODO: void gtk_widget_add_accelerator (GtkWidget *widget, const gchar *accel_signal, GtkAccelGroup *accel_group, guint accel_key, GdkModifierType accel_mods, GtkAccelFlags accel_flags)

// TODO: gboolean gtk_widget_remove_accelerator (GtkWidget *widget, GtkAccelGroup *accel_group, guint accel_key, GdkModifierType accel_mods)

// TODO: void gtk_widget_set_accel_path (GtkWidget *widget, const gchar *accel_path, GtkAccelGroup *accel_group)

// TODO: GList * gtk_widget_list_accel_closures (GtkWidget *widget)

pub fn (w Widget) can_activate_accel(signal_id int) bool {
	return gtk_widget_can_activate_accel(w.c, signal_id)
}

// TODO: gboolean gtk_widget_event (GtkWidget *widget, GdkEvent *event)

pub fn (w Widget) activate() bool {
	return gtk_widget_activate(w.c)
}

// TODO: gboolean gtk_widget_intersect (GtkWidget *widget, const GdkRectangle *area, GdkRectangle *intersection)

pub fn (w Widget) is_focus() bool {
	return gtk_widget_is_focus(w.c)
}

pub fn (w Widget) grab_focus() {
	gtk_widget_grab_focus(w.c)
}

pub fn (w Widget) grab_default() {
	gtk_widget_grab_default(w.c)
}

pub fn (w Widget) set_name(name string) {
	gtk_widget_set_name(w.c, name.str)
}

pub fn (w Widget) set_sensitive(sensitive bool) {
	gtk_widget_set_sensitive(w.c, sensitive)
}

pub fn (w Widget) set_parent(parent Widgeter) {
	parent_ := parent.get_gtk_widget()
	gtk_widget_set_parent(w.c, parent_)
}

// TODO: void gtk_widget_set_parent_window (GtkWidget *widget, GdkWindow *parent_window)

// TODO: GdkWindow * gtk_widget_get_parent_window (GtkWidget *widget)

pub fn (w Widget) set_events(events int) {
	gtk_widget_set_events(w.c, events)
}

pub fn (w Widget) get_events() int {
	return gtk_widget_get_events(w.c)
}

pub fn (w Widget) add_events(events int) {
	gtk_widget_add_events(w.c, events)
}

// TODO: void gtk_widget_set_device_events (GtkWidget *widget, GdkDevice *device, GdkEventMask events)

// TODO: GdkEventMask gtk_widget_get_device_events (GtkWidget *widget, GdkDevice *device)

// TODO: void gtk_widget_add_device_events (GtkWidget *widget, GdkDevice *device, GdkEventMask events)

// TODO: void gtk_widget_set_device_enabled (GtkWidget *widget, GdkDevice *device, gboolean enabled)

// TODO: gboolean gtk_widget_get_device_enabled (GtkWidget *widget, GdkDevice *device)

pub fn (w Widget) get_toplevel() &GtkWidget {
	return gtk_widget_get_toplevel(w.c)
}

pub fn (w Widget) get_ancestor(widget_type GType) &GtkWidget {
	return gtk_widget_get_ancestor(w.c, widget_type)
}

// TODO: GdkVisual * gtk_widget_get_visual (GtkWidget *widget)

// TODO: void gtk_widget_set_visual (GtkWidget *widget, GdkVisual *visual)

pub fn (w Widget) is_ancestor(ancestor Widgeter) bool {
	ancestor_ := ancestor.get_gtk_widget()
	return gtk_widget_is_ancestor(w.c, ancestor_)
}

pub fn (w Widget) translate_coordinates(dest_widget Widgeter, x , y int) (int, int) {
	dest_widget_ := dest_widget.get_gtk_widget()
	out_x := 0
	out_y := 0
	gtk_widget_translate_coordinates(w.c, dest_widget_, x, y, &out_x, &out_y)
	return out_x, out_y
}

pub fn (w Widget) hide_on_delete() bool {
	return gtk_widget_hide_on_delete(w.c)
}

pub fn (w Widget) set_direction(direction TextDirection) {
	gtk_widget_set_direction(w.c, direction)
}

pub fn (w Widget) get_direction() TextDirection {
	return TextDirection(gtk_widget_get_direction(w.c))
}

pub fn (w Widget) set_default_direction(direction TextDirection) {
	gtk_widget_set_default_direction(direction)
}

pub fn (w Widget) get_default_direction() TextDirection {
	return TextDirection(gtk_widget_get_default_direction())
}

// TODO: void gtk_widget_shape_combine_region (GtkWidget *widget, cairo_region_t *region)

// TODO: void gtk_widget_input_shape_combine_region (GtkWidget *widget, cairo_region_t *region)

// TODO: PangoContext * gtk_widget_create_pango_context (GtkWidget *widget)

// TODO: PangoContext * gtk_widget_get_pango_context (GtkWidget *widget)

// TODO: void gtk_widget_set_font_options (GtkWidget *widget, const cairo_font_options_t *options)

// TODO: const cairo_font_options_t * gtk_widget_get_font_options (GtkWidget *widget)

// TODO: void gtk_widget_set_font_map (GtkWidget *widget, PangoFontMap *font_map)

// TODO: PangoFontMap * gtk_widget_get_font_map (GtkWidget *widget)

// PangoLayout * gtk_widget_create_pango_layout (GtkWidget *widget, const gchar *text)

pub fn (w Widget) queue_draw_area(x, y, width, height int) {
	gtk_widget_queue_draw_area(w.c, x, y, width, height)
}

// TODO: void gtk_widget_queue_draw_region (GtkWidget *widget, const cairo_region_t *region)

pub fn (w Widget) set_app_paintable(paintable bool) {
	gtk_widget_set_app_paintable(w.c, paintable)
}

pub fn (w Widget) set_redraw_on_allocate(redraw_on_allocate bool) {
	gtk_widget_set_redraw_on_allocate(w.c, redraw_on_allocate)
}

pub fn (w Widget) mnemonic_activate(group_cycling bool) bool {
	return gtk_widget_mnemonic_activate(w.c, group_cycling)
}

// TODO: void gtk_widget_class_install_style_property (GtkWidgetClass *klass, GParamSpec *pspec)

// TODO: void gtk_widget_class_install_style_property_parser (GtkWidgetClass *klass, GParamSpec *pspec, GtkRcPropertyParser parser)

// TODO: GParamSpec * gtk_widget_class_find_style_property (GtkWidgetClass *klass, const gchar *property_name)

// TODO: GParamSpec ** gtk_widget_class_list_style_properties (GtkWidgetClass *klass, guint *n_properties)

// TODO: gboolean gtk_widget_send_focus_change (GtkWidget *widget, GdkEvent *event)

// TODO: void gtk_widget_style_get (GtkWidget *widget, const gchar *first_property_name, ...)

pub fn (w Widget) style_get_property(property_name string) voidptr {
	// TODO: ret is GValue, fix this after Gobject is implemented
	ret := voidptr(0)
	gtk_widget_style_get_property(w.c, property_name.str, &ret)
	return ret
}

// TODO: void gtk_widget_style_get_valist (GtkWidget *widget, const gchar *first_property_name, va_list var_args)

// TODO: void gtk_widget_class_set_accessible_type (GtkWidgetClass *widget_class, GType type)

// TODO: void gtk_widget_class_set_accessible_role (GtkWidgetClass *widget_class, AtkRole role)

// TODO: AtkObject * gtk_widget_get_accessible (GtkWidget *widget)

pub fn (w Widget) child_focus(direction DirectionType) bool {
	return gtk_widget_child_focus(w.c, direction)
}

pub fn (w Widget) child_notify(child_property string) {
	gtk_widget_child_notify(w.c, child_property.str)
}

pub fn (w Widget) freeze_child_notify() {
	gtk_widget_freeze_child_notify(w.c)
}

pub fn (w Widget) get_child_visible() bool {
	return gtk_widget_get_child_visible(w.c)
}

pub fn (w Widget) get_parent() Widget {
	parent := gtk_widget_get_parent(w.c)
	return Widget{parent}
}

// TODO: GtkSettings * gtk_widget_get_settings (GtkWidget *widget)

// TODO: GtkClipboard * gtk_widget_get_clipboard (GtkWidget *widget, GdkAtom selection)

// TODO: GdkDisplay * gtk_widget_get_display (GtkWidget *widget)

// TODO: GdkScreen * gtk_widget_get_screen (GtkWidget *widget)

pub fn (w Widget) has_screen() bool {
	return gtk_widget_has_screen(w.c)
}

pub fn (w Widget) get_size_request() (int, int) {
	width := 0
	height := 0
	gtk_widget_get_size_request(w.c, &width, &height)
	return width, height
}

pub fn (w Widget) set_child_visible(visible bool) {
	gtk_widget_set_child_visible(w.c, visible)
}

pub fn (w Widget) set_size_request(width, height int) {
	gtk_widget_set_size_request(w.c, width, height)
}

pub fn (w Widget) thaw_child_notify() {
	gtk_widget_thaw_child_notify(w.c)
}

pub fn (w Widget) set_no_show_all(no_show_all bool) {
	gtk_widget_set_no_show_all(w.c, no_show_all)
}

pub fn (w Widget) get_no_show_all() bool {
	return gtk_widget_get_no_show_all(w.c)
}

// TODO: GList * gtk_widget_list_mnemonic_labels (GtkWidget *widget)

pub fn (w Widget) add_mnemonic_label(label Widgeter) {
	label_ := label.get_gtk_widget()
	gtk_widget_add_mnemonic_label(w.c, label_)
}

pub fn (w Widget) remove_mnemonic_label(label Widgeter) {
	label_ := label.get_gtk_widget()
	gtk_widget_remove_mnemonic_label(w.c, label_)
}

pub fn (w Widget) error_bell() {
	gtk_widget_error_bell(w.c)
}

pub fn (w Widget) keynav_failed(direction DirectionType) bool {
	return gtk_widget_keynav_failed(w.c, direction)
}

pub fn (w Widget) get_tooltip_markup() string {
	return tos3(gtk_widget_get_tooltip_markup(w.c))
}

pub fn (w Widget) set_tooltip_markup(markup string) {
	gtk_widget_set_tooltip_markup(w.c, markup.str)
}

pub fn (w Widget) get_tooltip_text() string {
	return tos3(gtk_widget_get_tooltip_text(w.c))
}

pub fn (w Widget) set_tooltip_text(tooltip string) {
	gtk_widget_set_tooltip_text(w.c, tooltip.str)
}

pub fn (w Widget) get_tooltip_window() Window {
	window := gtk_widget_get_tooltip_window(w.c)
	return Window{window}
}

pub fn (w Widget) set_tooltip_window(window Window) {
	window_ := window.get_gtk_widget()
	gtk_widget_set_tooltip_window(w.c, window_)
}

pub fn (w Widget) get_has_tooltip() bool {
	return gtk_widget_get_has_tooltip(w.c)
}

pub fn (w Widget) set_has_tooltip(has_tooltip bool) {
	gtk_widget_set_has_tooltip(w.c, has_tooltip)
}

pub fn (w Widget) trigger_tooltip_query() {
	gtk_widget_trigger_tooltip_query(w.c)
}

pub fn (w Widget) get_window() gdk.Window {
	window := gtk_widget_get_window(w.c)
	return gdk.Window{window}
}

pub fn (w Widget) register_window(window gdk.Window) {
	window_ := window.get_cptr() 
	gtk_widget_register_window(w.c, window_)
}

pub fn (w Widget) unregister_window(window gdk.Window) {
	window_ := window.get_cptr() 
	gtk_widget_unregister_window(w.c, window_)
}

// TODO: gboolean gtk_cairo_should_draw_window (cairo_t *cr, GdkWindow *window)

// TODO: void gtk_cairo_transform_to_window (cairo_t *cr, GtkWidget *widget, GdkWindow *window)

pub fn (w Widget) get_allocated_width() int {
	return gtk_widget_get_allocated_width(w.c)
}

pub fn (w Widget) get_allocated_height() int {
	return gtk_widget_get_allocated_height(w.c)
}

pub fn (w Widget) get_allocation() Allocation {
	allocation := &GtkAllocation(0) 
	gtk_widget_get_allocation(w.c, &allocation)
	return Allocation{allocation}
}

pub fn (w Widget) set_allocation(allocation Allocation) {
	allocation_ := allocation.get_cptr()
	gtk_widget_set_allocation(w.c, allocation_)
}

pub fn (w Widget) get_allocated_baseline() int {
	return gtk_widget_get_allocated_baseline(w.c)
}

pub fn (w Widget) get_allocated_size() (Allocation, int) {
	allocation := &GtkAllocation(0)
	baseline := 0
	gtk_widget_get_allocated_size(w.c, &allocation, &baseline)
	return Allocation{allocation}, baseline
}

pub fn (w Widget) get_clip() Allocation {
	allocation := &GtkAllocation(0)
	gtk_widget_get_clip(w.c, &allocation)
	return Allocation{allocation}
}

pub fn (w Widget) set_clip(allocation Allocation) {
	allocation_ := allocation.get_cptr()
	gtk_widget_set_clip(w.c, allocation_)
}

pub fn (w Widget) get_app_paintable() bool {
	return gtk_widget_get_app_paintable(w.c)
}

pub fn (w Widget) get_can_default() bool {
	return gtk_widget_get_can_default(w.c)
}

pub fn (w Widget) set_can_default(can_default bool)  {
	gtk_widget_set_can_default(w.c, can_default)
}

pub fn (w Widget) set_can_focus(can_focus bool) {
	gtk_widget_set_can_focus(w.c, can_focus)
}

pub fn (w Widget) get_focus_on_click() bool {
	return gtk_widget_get_focus_on_click(w.c)
}

pub fn (w Widget) set_focus_on_click(focus_on_click bool) {
	gtk_widget_set_focus_on_click(w.c, focus_on_click)
}

pub fn (w Widget) get_has_window() bool {
	return gtk_widget_get_has_window(w.c)
}

pub fn (w Widget) set_has_window(has_window bool) {
	gtk_widget_set_has_window(w.c, has_window)
}

pub fn (w Widget) get_sensitive() bool {
	return gtk_widget_get_sensitive(w.c)
}

pub fn (w Widget) is_sensitive() bool {
	return gtk_widget_is_sensitive(w.c)
}

pub fn (w Widget) get_visible() bool {
	return gtk_widget_get_visible(w.c)
}

pub fn (w Widget) is_visible() bool {
	return gtk_widget_is_visible(w.c)
}

pub fn (w Widget) set_visible(visible bool) {
	gtk_widget_set_visible(w.c, visible)
}

pub fn (w Widget) set_state_flags(flags StateFlags, clear bool) {
	gtk_widget_set_state_flags(w.c, flags, clear)
}

pub fn (w Widget) unset_state_flags(flags StateFlags) {
	gtk_widget_unset_state_flags(w.c, flags)
}

pub fn (w Widget) get_state_flags() StateFlags {
	return gtk_widget_get_state_flags(w.c)
}

pub fn (w Widget) has_default() bool {
	return gtk_widget_has_default(w.c)
}

pub fn (w Widget) has_focus() bool {
	return gtk_widget_has_focus(w.c)
}

pub fn (w Widget) has_visible_focus() bool {
	return gtk_widget_has_visible_focus(w.c)
}

pub fn (w Widget) has_grab() bool {
	return gtk_widget_has_grab(w.c)
}

pub fn (w Widget) is_drawable() bool {
	return gtk_widget_is_drawable(w.c)
}

pub fn (w Widget) is_toplevel() bool {
	return gtk_widget_is_toplevel(w.c)
}

pub fn (w Widget) set_window(window gdk.Window) {
	window_ := window.get_cptr()
	gtk_widget_set_window(w.c, window_)
}

pub fn (w Widget) set_receives_default(receives_default bool) {
	gtk_widget_set_receives_default(w.c, receives_default)
}

pub fn (w Widget) get_receives_default() bool {
	return gtk_widget_get_receives_default(w.c)
}

pub fn (w Widget) set_support_multidevice(support_multidevice bool) {
	gtk_widget_set_support_multidevice(w.c, support_multidevice)
} 

pub fn (w Widget) get_support_multidevice() bool {
	return gtk_widget_get_support_multidevice(w.c)
}

pub fn (w Widget) set_realized(realized bool) {
	gtk_widget_set_realized(w.c, realized)
}

pub fn (w Widget) get_realized() bool {
	return gtk_widget_get_realized(w.c)
}

pub fn (w Widget) set_mapped(realized bool) {
	gtk_widget_set_mapped(w.c, realized)
}

pub fn (w Widget) get_mapped() bool {
	return gtk_widget_get_mapped(w.c)
}

pub fn (w Widget) device_is_shadowed(device gdk.Device) bool {
	device_ := device.get_cptr()
	return gtk_widget_device_is_shadowed(w.c, device_)
}

pub fn (w Widget) get_modifier_mask(intent gdk.ModifierIntent) gdk.ModifierType {
	return gtk_widget_get_modifier_mask(w.c, intent)
}

pub fn (w Widget) insert_action_group(name string, group gio.ActionGroup) {
	group_ := group.get_cptr()
	gtk_widget_insert_action_group(w.c, name.str, group_)
}

pub fn (w Widget) get_opacity() f32 {
	return gtk_widget_get_opacity(w.c)
}

pub fn (w Widget) set_opacity(opacity f32) {
	gtk_widget_set_opacity(w.c, opacity)
}

pub fn (w Widget) list_action_prefixes() []string {
	c_arr_str := gtk_widget_list_action_prefixes(w.c)
	v_arr_str := carray_string_to_array_string(c_arr_str)
	return v_arr_str
}

pub fn (w Widget) get_action_group(prefix string) gio.ActionGroup {
	cptr := gtk_widget_get_action_group(w.c, prefix.str)
	return gio.ActionGroup{cptr}
}

pub fn (w Widget) get_path() WidgetPath {
	cptr := gtk_widget_get_path(w.c)
	return WidgetPath{cptr}
}

pub fn (w Widget) get_style_context() StyleContext {
	cptr := gtk_widget_get_style_context(w.c)
	return StyleContext{cptr}
}

pub fn (w Widget) reset_style() {
	gtk_widget_reset_style(w.c)
}

pub fn (w &GtkWidget) to_window() Window {
	return Window{w}
}
