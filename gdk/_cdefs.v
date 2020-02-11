module gdk

pub struct C.GdkWindow
struct C.GdkWindowAttr
struct C.GdkGravity
struct C.GdkDisplay
struct C.GdkScreen
struct C.GdkVisual
struct C.GdkRectangle
pub struct C.GdkDevice
struct C.GdkEvent
struct C.GdkGeometry
struct C.GdkGLContext
struct C.GdkDrawingContext
struct C.GdkWindowInvalidateHandlerFunc
struct C.GdkFrameClock
struct C.GdkFilterFunc
struct C.GdkColor
pub struct C.GdkRGBA
struct C.GdkCursor
pub struct C.GdkModifierType
pub struct C.GdkPixbuf

/*  GDK WINDOW */
fn C.gdk_window_new(&GdkWindow, &GdkWindowAttr, int) &GdkWindow
fn C.gdk_window_destroy(&GdkWindow) 
fn C.gdk_window_get_window_type(&GdkWindow) int /* GdkWindowType */
fn C.gdk_window_get_display(&GdkWindow) &GdkDisplay
fn C.gdk_window_get_screen(&GdkWindow) &GdkScreen
fn C.gdk_window_get_visual(&GdkWindow) &GdkVisual
fn C.gdk_window_at_pointer(&int, &int) &GdkWindow
fn C.gdk_window_show(&GdkWindow) 
fn C.gdk_window_show_unraised(&GdkWindow) 
fn C.gdk_window_hide(&GdkWindow) 
fn C.gdk_window_is_destroyed(&GdkWindow) bool
fn C.gdk_window_is_visible(&GdkWindow) bool
fn C.gdk_window_is_viewable(&GdkWindow) bool
fn C.gdk_window_is_input_only(&GdkWindow) bool
fn C.gdk_window_is_shaped(&GdkWindow) bool
fn C.gdk_window_get_state(&GdkWindow) int /* GdkWindowState */
fn C.gdk_window_withdraw(&GdkWindow) 
fn C.gdk_window_iconify(&GdkWindow) 
fn C.gdk_window_deiconify(&GdkWindow) 
fn C.gdk_window_stick(&GdkWindow) 
fn C.gdk_window_unstick(&GdkWindow) 
fn C.gdk_window_maximize(&GdkWindow) 
fn C.gdk_window_unmaximize(&GdkWindow) 
fn C.gdk_window_fullscreen(&GdkWindow) 
fn C.gdk_window_fullscreen_on_monitor(&GdkWindow, int) 
fn C.gdk_window_unfullscreen(&GdkWindow) 
fn C.gdk_window_get_fullscreen_mode(&GdkWindow) int /* GdkFullscreenMode */
fn C.gdk_window_set_fullscreen_mode(&GdkWindow, int /* GdkFullscreenMode */) 
fn C.gdk_window_set_keep_above(&GdkWindow, bool) 
fn C.gdk_window_set_keep_below(&GdkWindow, bool) 
fn C.gdk_window_set_opacity(&GdkWindow, f64) 
fn C.gdk_window_set_composited(&GdkWindow, bool) 
fn C.gdk_window_get_composited(&GdkWindow) bool
fn C.gdk_window_set_pass_through(&GdkWindow, bool) 
fn C.gdk_window_get_pass_through(&GdkWindow) bool
fn C.gdk_window_move(&GdkWindow, int, int) 
fn C.gdk_window_resize(&GdkWindow, int, int) 
fn C.gdk_window_move_resize(&GdkWindow, int, int, int, int) 
fn C.gdk_window_scroll(&GdkWindow, int, int) 
fn C.gdk_window_move_to_rect(&GdkWindow, &GdkRectangle, int /* GdkGravity */, int /* GdkGravity */, int/* GdkAnchorHints */, int, int) 
// fn C.gdk_window_move_region(&GdkWindow, &cairo_region_t, int, int) 
fn C.gdk_window_flush(&GdkWindow) 
fn C.gdk_window_has_native(&GdkWindow) bool
fn C.gdk_window_ensure_native(&GdkWindow) bool
fn C.gdk_window_reparent(&GdkWindow, &GdkWindow, int, int) 
fn C.gdk_window_raise(&GdkWindow) 
fn C.gdk_window_lower(&GdkWindow) 
fn C.gdk_window_restack(&GdkWindow, &GdkWindow, bool) 
fn C.gdk_window_focus(&GdkWindow, u32) 
fn C.gdk_window_register_dnd(&GdkWindow) 
fn C.gdk_window_begin_resize_drag(&GdkWindow, int /* GdkWindowEdge */, int, int, int, u32) 
fn C.gdk_window_begin_resize_drag_for_device(&GdkWindow, int /* GdkWindowEdge */, &GdkDevice, int, int, int, u32) 
fn C.gdk_window_begin_move_drag(&GdkWindow, int, int, int, u32) 
fn C.gdk_window_begin_move_drag_for_device(&GdkWindow, &GdkDevice, int, int, int, u32) 
fn C.gdk_window_show_window_menu(&GdkWindow, &GdkEvent) bool
fn C.gdk_window_rain_size(&GdkGeometry, int /* GdkWindowHints */, int, int, &int, &int) 
fn C.gdk_window_beep(&GdkWindow) 
fn C.gdk_window_get_scale_factor(&GdkWindow) int
// fn C.gdk_window_set_opaque_region(&GdkWindow, &cairo_region_t) 
// fn C.gdk_window_create_gl_context(&GdkWindow, &GError) &GdkGLContext
// fn C.gdk_window_mark_paint_from_clip(&GdkWindow, &cairo_t)
// fn C.gdk_window_get_clip_region(&GdkWindow) &cairo_region_t
fn C.gdk_window_begin_paint_rect(&GdkWindow, &GdkRectangle) 
// fn C.gdk_window_begin_paint_region(&GdkWindow, &cairo_region_t) 
fn C.gdk_window_end_paint(&GdkWindow) 
// fn C.gdk_window_begin_draw_frame(&GdkWindow, &cairo_region_t) &GdkDrawingContext
fn C.gdk_window_end_draw_frame(&GdkWindow, &GdkDrawingContext) 
// fn C.gdk_window_get_visible_region(&GdkWindow) &cairo_region_t
fn C.gdk_window_set_invalidate_handler(&GdkWindow, GdkWindowInvalidateHandlerFunc) 
fn C.gdk_window_invalidate_rect(&GdkWindow, &GdkRectangle, bool) 
// fn C.gdk_window_invalidate_region(&GdkWindow, &cairo_region_t, bool) 
// fn C.gdk_window_invalidate_maybe_recurse(&GdkWindow, &cairo_region_t, GdkWindowChildFunc, voidptr) 
// fn C.gdk_window_get_update_area(&GdkWindow) &cairo_region_t
fn C.gdk_window_freeze_updates(&GdkWindow) 
fn C.gdk_window_thaw_updates(&GdkWindow) 
fn C.gdk_window_process_all_updates() 
fn C.gdk_window_process_updates(&GdkWindow, bool) 
fn C.gdk_window_set_debug_updates(bool) 
fn C.gdk_window_enable_synchronized_configure(&GdkWindow) 
fn C.gdk_window_configure_finished(&GdkWindow) 
fn C.gdk_window_get_frame_clock(&GdkWindow) &GdkFrameClock
fn C.gdk_window_set_user_data(&GdkWindow, voidptr) 
fn C.gdk_window_set_override_redirect(&GdkWindow, bool) 
fn C.gdk_window_set_accept_focus(&GdkWindow, bool) 
fn C.gdk_window_get_accept_focus(&GdkWindow) bool
fn C.gdk_window_set_focus_on_map(&GdkWindow, bool) 
fn C.gdk_window_get_focus_on_map(&GdkWindow) bool
fn C.gdk_window_add_filter(&GdkWindow, GdkFilterFunc, voidptr) 
fn C.gdk_window_remove_filter(&GdkWindow, GdkFilterFunc, voidptr) 
// fn C.GdkXEvent(*xevent, *event) GdkFilterReturn
// fn C.gdk_window_shape_combine_region(&GdkWindow, &cairo_region_t, int, int) 
fn C.gdk_window_set_child_shapes(&GdkWindow) 
fn C.gdk_window_merge_child_shapes(&GdkWindow) 
// fn C.gdk_window_input_shape_combine_region(&GdkWindow, &cairo_region_t, int, int) 
fn C.gdk_window_set_child_input_shapes(&GdkWindow) 
fn C.gdk_window_merge_child_input_shapes(&GdkWindow) 
fn C.gdk_window_set_static_gravities(&GdkWindow, bool) bool
fn C.gdk_window_set_title(&GdkWindow, &charptr) 
fn C.gdk_window_set_background(&GdkWindow, &GdkColor) 
fn C.gdk_window_set_background_rgba(&GdkWindow, &GdkRGBA) 
// fn C.gdk_window_set_background_pattern(&GdkWindow, &cairo_pattern_t) 
// fn C.gdk_window_get_background_pattern(&GdkWindow) &cairo_pattern_t
fn C.gdk_window_set_cursor(&GdkWindow, &GdkCursor) 
fn C.gdk_window_get_cursor(&GdkWindow) &GdkCursor
fn C.gdk_window_get_user_data(&GdkWindow, &voidptr) 
fn C.gdk_window_get_geometry(&GdkWindow, &int, &int, &int, &int) 
fn C.gdk_window_set_geometry_hints(&GdkWindow, &GdkGeometry, int /* GdkWindowHints */) 
fn C.gdk_window_get_width(&GdkWindow) int
fn C.gdk_window_get_height(&GdkWindow) int
fn C.gdk_window_set_icon_list(&GdkWindow, &C.GList) 
fn C.gdk_window_set_modal_hint(&GdkWindow, bool) 
fn C.gdk_window_get_modal_hint(&GdkWindow) bool
fn C.gdk_window_set_type_hint(&GdkWindow, int /* GdkWindowTypeHint */) 
fn C.gdk_window_get_type_hint(&GdkWindow) int /* GdkWindowTypeHint */
fn C.gdk_window_set_shadow_width(&GdkWindow, int, int, int, int) 
fn C.gdk_window_set_skip_taskbar_hint(&GdkWindow, bool) 
fn C.gdk_window_set_skip_pager_hint(&GdkWindow, bool) 
fn C.gdk_window_set_urgency_hint(&GdkWindow, bool) 
fn C.gdk_window_get_position(&GdkWindow, &int, &int) 
fn C.gdk_window_get_root_origin(&GdkWindow, &int, &int) 
fn C.gdk_window_get_frame_extents(&GdkWindow, &GdkRectangle) 
fn C.gdk_window_get_origin(&GdkWindow, &int, &int) int
fn C.gdk_window_get_root_coords(&GdkWindow, int, int, &int, &int) 
fn C.gdk_window_get_pointer(&GdkWindow, &int, &int, &GdkModifierType) &GdkWindow
fn C.gdk_window_get_device_position(&GdkWindow, &GdkDevice, &int, &int, &GdkModifierType) &GdkWindow
fn C.gdk_window_get_device_position_double(&GdkWindow, &GdkDevice, &f64, &f64, &GdkModifierType) &GdkWindow
fn C.gdk_window_get_parent(&GdkWindow) &GdkWindow
fn C.gdk_window_get_toplevel(&GdkWindow) &GdkWindow
fn C.gdk_window_get_children(&GdkWindow) &C.GList
fn C.gdk_window_get_children_with_user_data(&GdkWindow, voidptr) &C.GList
fn C.gdk_window_peek_children(&GdkWindow) &C.GList
fn C.gdk_window_get_events(&GdkWindow) int /* GdkEventMask */
fn C.gdk_window_set_events(&GdkWindow, int /* GdkEventMask */) 
fn C.gdk_window_set_icon_name(&GdkWindow, &charptr) 
fn C.gdk_window_set_transient_for(&GdkWindow, &GdkWindow) 
fn C.gdk_window_set_role(&GdkWindow, &charptr) 
fn C.gdk_window_set_startup_id(&GdkWindow, &charptr) 
fn C.gdk_window_set_group(&GdkWindow, &GdkWindow) 
fn C.gdk_window_get_group(&GdkWindow) &GdkWindow
fn C.gdk_window_set_decorations(&GdkWindow,  int /* GdkWMDecoration */) 
fn C.gdk_window_get_decorations(&GdkWindow, &int /* GdkWMDecoration */) bool
fn C.gdk_window_set_functions(&GdkWindow, int /* GdkWMFunction */)
fn C.gdk_window_get_support_multidevice(&GdkWindow) bool
fn C.gdk_window_set_support_multidevice(&GdkWindow, bool) 
fn C.gdk_window_get_device_cursor(&GdkWindow, &GdkDevice) &GdkCursor
fn C.gdk_window_set_device_cursor(&GdkWindow, &GdkDevice, &GdkCursor) 
fn C.gdk_window_get_device_events(&GdkWindow, &GdkDevice) int /* GdkEventMask */
fn C.gdk_window_set_device_events(&GdkWindow, &GdkDevice, int /* GdkEventMask */) 
fn C.gdk_window_get_source_events(&GdkWindow, int /* GdkInputSource */) int /* GdkEventMask */
fn C.gdk_window_set_source_events(&GdkWindow, int /* GdkInputSource */, int /* GdkEventMask */) 
fn C.gdk_window_get_event_compression(&GdkWindow) bool
fn C.gdk_window_set_event_compression(&GdkWindow, bool) 
fn C.gdk_window_geometry_changed(&GdkWindow) 
fn C.gdk_window_coords_from_parent(&GdkWindow, f64, f64, &f64, &f64) 
fn C.gdk_window_coords_to_parent(&GdkWindow, f64, f64, &f64, &f64) 
fn C.gdk_window_get_effective_parent(&GdkWindow) &GdkWindow
fn C.gdk_window_get_effective_toplevel(&GdkWindow) &GdkWindow
