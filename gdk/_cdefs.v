module gdk

pub struct C.GdkWindow {}

struct C.GdkWindowAttr {}

struct C.GdkGravity {}

struct C.GdkDisplay {}

struct C.GdkScreen {}

struct C.GdkVisual {}

struct C.GdkRectangle {}

pub struct C.GdkDevice {}

struct C.GdkEvent {}

struct C.GdkGeometry {}

struct C.GdkGLContext {}

struct C.GdkDrawingContext {}

struct C.GdkWindowInvalidateHandlerFunc {}

struct C.GdkFrameClock {}

struct C.GdkFilterFunc {}

struct C.GdkColor {}

pub struct C.GdkRGBA {}

struct C.GdkCursor {}

pub struct C.GdkModifierType {}

pub struct C.GdkPixbuf {}

// GDK WINDOW
fn C.gdk_window_new(&C.GdkWindow, &C.GdkWindowAttr, int) &C.GdkWindow

fn C.gdk_window_destroy(&C.GdkWindow)

fn C.gdk_window_get_window_type(&C.GdkWindow) int

// C.GdkWindowType
fn C.gdk_window_get_display(&C.GdkWindow) &C.GdkDisplay

fn C.gdk_window_get_screen(&C.GdkWindow) &C.GdkScreen

fn C.gdk_window_get_visual(&C.GdkWindow) &C.GdkVisual

fn C.gdk_window_at_pointer(&int, &int) &C.GdkWindow

fn C.gdk_window_show(&C.GdkWindow)

fn C.gdk_window_show_unraised(&C.GdkWindow)

fn C.gdk_window_hide(&C.GdkWindow)

fn C.gdk_window_is_destroyed(&C.GdkWindow) bool

fn C.gdk_window_is_visible(&C.GdkWindow) bool

fn C.gdk_window_is_viewable(&C.GdkWindow) bool

fn C.gdk_window_is_input_only(&C.GdkWindow) bool

fn C.gdk_window_is_shaped(&C.GdkWindow) bool

fn C.gdk_window_get_state(&C.GdkWindow) int

// C.GdkWindowState
fn C.gdk_window_withdraw(&C.GdkWindow)

fn C.gdk_window_iconify(&C.GdkWindow)

fn C.gdk_window_deiconify(&C.GdkWindow)

fn C.gdk_window_stick(&C.GdkWindow)

fn C.gdk_window_unstick(&C.GdkWindow)

fn C.gdk_window_maximize(&C.GdkWindow)

fn C.gdk_window_unmaximize(&C.GdkWindow)

fn C.gdk_window_fullscreen(&C.GdkWindow)

fn C.gdk_window_fullscreen_on_monitor(&C.GdkWindow, int)

fn C.gdk_window_unfullscreen(&C.GdkWindow)

fn C.gdk_window_get_fullscreen_mode(&C.GdkWindow) int

// C.GdkFullscreenMode
fn C.gdk_window_set_fullscreen_mode(&C.GdkWindow, int, C.GdkFullscreenMode)

fn C.gdk_window_set_keep_above(&C.GdkWindow, bool)

fn C.gdk_window_set_keep_below(&C.GdkWindow, bool)

fn C.gdk_window_set_opacity(&C.GdkWindow, f64)

fn C.gdk_window_set_composited(&C.GdkWindow, bool)

fn C.gdk_window_get_composited(&C.GdkWindow) bool

fn C.gdk_window_set_pass_through(&C.GdkWindow, bool)

fn C.gdk_window_get_pass_through(&C.GdkWindow) bool

fn C.gdk_window_move(&C.GdkWindow, int, int)

fn C.gdk_window_resize(&C.GdkWindow, int, int)

fn C.gdk_window_move_resize(&C.GdkWindow, int, int, int, int)

fn C.gdk_window_scroll(&C.GdkWindow, int, int)

fn C.gdk_window_move_to_rect(&C.GdkWindow, &C.GdkRectangle, int, C.GdkGravity, int, C.GdkGravity, int, C.GdkAnchorHints, int, int)

// fn C.gdk_window_move_region(&C.GdkWindow, &cairo_region_t, int, int)
fn C.gdk_window_flush(&C.GdkWindow)

fn C.gdk_window_has_native(&C.GdkWindow) bool

fn C.gdk_window_ensure_native(&C.GdkWindow) bool

fn C.gdk_window_reparent(&C.GdkWindow, &C.GdkWindow, int, int)

fn C.gdk_window_raise(&C.GdkWindow)

fn C.gdk_window_lower(&C.GdkWindow)

fn C.gdk_window_restack(&C.GdkWindow, &C.GdkWindow, bool)

fn C.gdk_window_focus(&C.GdkWindow, u32)

fn C.gdk_window_register_dnd(&C.GdkWindow)

fn C.gdk_window_begin_resize_drag(&C.GdkWindow, int, C.GdkWindowEdge, int, int, int, u32)

fn C.gdk_window_begin_resize_drag_for_device(&C.GdkWindow, int, C.GdkWindowEdge, &C.GdkDevice, int, int, int, u32)

fn C.gdk_window_begin_move_drag(&C.GdkWindow, int, int, int, u32)

fn C.gdk_window_begin_move_drag_for_device(&C.GdkWindow, &C.GdkDevice, int, int, int, u32)

fn C.gdk_window_show_window_menu(&C.GdkWindow, &C.GdkEvent) bool

fn C.gdk_window_rain_size(&C.GdkGeometry, int, C.GdkWindowHints, int, int, &int, &int)

fn C.gdk_window_beep(&C.GdkWindow)

fn C.gdk_window_get_scale_factor(&C.GdkWindow) int

// fn C.gdk_window_set_opaque_region(&C.GdkWindow, &cairo_region_t)
// fn C.gdk_window_create_gl_context(&C.GdkWindow, &GError) &C.GdkGLContext
// fn C.gdk_window_mark_paint_from_clip(&C.GdkWindow, &cairo_t)
// fn C.gdk_window_get_clip_region(&C.GdkWindow) &cairo_region_t
fn C.gdk_window_begin_paint_rect(&C.GdkWindow, &C.GdkRectangle)

// fn C.gdk_window_begin_paint_region(&C.GdkWindow, &cairo_region_t)
fn C.gdk_window_end_paint(&C.GdkWindow)

// fn C.gdk_window_begin_draw_frame(&C.GdkWindow, &cairo_region_t) &C.GdkDrawingContext
fn C.gdk_window_end_draw_frame(&C.GdkWindow, &C.GdkDrawingContext)

// fn C.gdk_window_get_visible_region(&C.GdkWindow) &cairo_region_t
fn C.gdk_window_set_invalidate_handler(&C.GdkWindow, C.GdkWindowInvalidateHandlerFunc)

fn C.gdk_window_invalidate_rect(&C.GdkWindow, &C.GdkRectangle, bool)

// fn C.gdk_window_invalidate_region(&C.GdkWindow, &cairo_region_t, bool)
// fn C.gdk_window_invalidate_maybe_recurse(&C.GdkWindow, &cairo_region_t, C.GdkWindowChildFunc, voidptr)
// fn C.gdk_window_get_update_area(&C.GdkWindow) &cairo_region_t
fn C.gdk_window_freeze_updates(&C.GdkWindow)

fn C.gdk_window_thaw_updates(&C.GdkWindow)

fn C.gdk_window_process_all_updates()

fn C.gdk_window_process_updates(&C.GdkWindow, bool)

fn C.gdk_window_set_debug_updates(bool)

fn C.gdk_window_enable_synchronized_configure(&C.GdkWindow)

fn C.gdk_window_configure_finished(&C.GdkWindow)

fn C.gdk_window_get_frame_clock(&C.GdkWindow) &C.GdkFrameClock

fn C.gdk_window_set_user_data(&C.GdkWindow, voidptr)

fn C.gdk_window_set_override_redirect(&C.GdkWindow, bool)

fn C.gdk_window_set_accept_focus(&C.GdkWindow, bool)

fn C.gdk_window_get_accept_focus(&C.GdkWindow) bool

fn C.gdk_window_set_focus_on_map(&C.GdkWindow, bool)

fn C.gdk_window_get_focus_on_map(&C.GdkWindow) bool

fn C.gdk_window_add_filter(&C.GdkWindow, C.GdkFilterFunc, voidptr)

fn C.gdk_window_remove_filter(&C.GdkWindow, C.GdkFilterFunc, voidptr)

// fn C.GdkXEvent(*xevent, *event) C.GdkFilterReturn
// fn C.gdk_window_shape_combine_region(&C.GdkWindow, &cairo_region_t, int, int)
fn C.gdk_window_set_child_shapes(&C.GdkWindow)

fn C.gdk_window_merge_child_shapes(&C.GdkWindow)

// fn C.gdk_window_input_shape_combine_region(&C.GdkWindow, &cairo_region_t, int, int)
fn C.gdk_window_set_child_input_shapes(&C.GdkWindow)

fn C.gdk_window_merge_child_input_shapes(&C.GdkWindow)

fn C.gdk_window_set_static_gravities(&C.GdkWindow, bool) bool

fn C.gdk_window_set_title(&C.GdkWindow, &charptr)

fn C.gdk_window_set_background(&C.GdkWindow, &C.GdkColor)

fn C.gdk_window_set_background_rgba(&C.GdkWindow, &C.GdkRGBA)

// fn C.gdk_window_set_background_pattern(&C.GdkWindow, &cairo_pattern_t)
// fn C.gdk_window_get_background_pattern(&C.GdkWindow) &cairo_pattern_t
fn C.gdk_window_set_cursor(&C.GdkWindow, &C.GdkCursor)

fn C.gdk_window_get_cursor(&C.GdkWindow) &C.GdkCursor

fn C.gdk_window_get_user_data(&C.GdkWindow, &voidptr)

fn C.gdk_window_get_geometry(&C.GdkWindow, &int, &int, &int, &int)

fn C.gdk_window_set_geometry_hints(&C.GdkWindow, &C.GdkGeometry, int, C.GdkWindowHints)

fn C.gdk_window_get_width(&C.GdkWindow) int

fn C.gdk_window_get_height(&C.GdkWindow) int

fn C.gdk_window_set_icon_list(&C.GdkWindow, &C.GList)

fn C.gdk_window_set_modal_hint(&C.GdkWindow, bool)

fn C.gdk_window_get_modal_hint(&C.GdkWindow) bool

fn C.gdk_window_set_type_hint(&C.GdkWindow, int, C.GdkWindowTypeHint)

fn C.gdk_window_get_type_hint(&C.GdkWindow) int

// C.GdkWindowTypeHint
fn C.gdk_window_set_shadow_width(&C.GdkWindow, int, int, int, int)

fn C.gdk_window_set_skip_taskbar_hint(&C.GdkWindow, bool)

fn C.gdk_window_set_skip_pager_hint(&C.GdkWindow, bool)

fn C.gdk_window_set_urgency_hint(&C.GdkWindow, bool)

fn C.gdk_window_get_position(&C.GdkWindow, &int, &int)

fn C.gdk_window_get_root_origin(&C.GdkWindow, &int, &int)

fn C.gdk_window_get_frame_extents(&C.GdkWindow, &C.GdkRectangle)

fn C.gdk_window_get_origin(&C.GdkWindow, &int, &int) int

fn C.gdk_window_get_root_coords(&C.GdkWindow, int, int, &int, &int)

fn C.gdk_window_get_pointer(&C.GdkWindow, &int, &int, &C.GdkModifierType) &C.GdkWindow

fn C.gdk_window_get_device_position(&C.GdkWindow, &C.GdkDevice, &int, &int, &C.GdkModifierType) &C.GdkWindow

fn C.gdk_window_get_device_position_double(&C.GdkWindow, &C.GdkDevice, &f64, &f64, &C.GdkModifierType) &C.GdkWindow

fn C.gdk_window_get_parent(&C.GdkWindow) &C.GdkWindow

fn C.gdk_window_get_toplevel(&C.GdkWindow) &C.GdkWindow

fn C.gdk_window_get_children(&C.GdkWindow) &C.GList

fn C.gdk_window_get_children_with_user_data(&C.GdkWindow, voidptr) &C.GList

fn C.gdk_window_peek_children(&C.GdkWindow) &C.GList

fn C.gdk_window_get_events(&C.GdkWindow) int

// C.GdkEventMask
fn C.gdk_window_set_events(&C.GdkWindow, int, C.GdkEventMask)

fn C.gdk_window_set_icon_name(&C.GdkWindow, &charptr)

fn C.gdk_window_set_transient_for(&C.GdkWindow, &C.GdkWindow)

fn C.gdk_window_set_role(&C.GdkWindow, &charptr)

fn C.gdk_window_set_startup_id(&C.GdkWindow, &charptr)

fn C.gdk_window_set_group(&C.GdkWindow, &C.GdkWindow)

fn C.gdk_window_get_group(&C.GdkWindow) &C.GdkWindow

fn C.gdk_window_set_decorations(&C.GdkWindow, int, C.GdkWMDecoration)

fn C.gdk_window_get_decorations(&C.GdkWindow, &int, C.GdkWMDecoration) bool

fn C.gdk_window_set_functions(&C.GdkWindow, int, C.GdkWMFunction)

fn C.gdk_window_get_support_multidevice(&C.GdkWindow) bool

fn C.gdk_window_set_support_multidevice(&C.GdkWindow, bool)

fn C.gdk_window_get_device_cursor(&C.GdkWindow, &C.GdkDevice) &C.GdkCursor

fn C.gdk_window_set_device_cursor(&C.GdkWindow, &C.GdkDevice, &C.GdkCursor)

fn C.gdk_window_get_device_events(&C.GdkWindow, &C.GdkDevice) int

// C.GdkEventMask
fn C.gdk_window_set_device_events(&C.GdkWindow, &C.GdkDevice, int, C.GdkEventMask)

fn C.gdk_window_get_source_events(&C.GdkWindow, int, C.GdkInputSource) int

// C.GdkEventMask
fn C.gdk_window_set_source_events(&C.GdkWindow, int, C.GdkInputSource, int, C.GdkEventMask)

fn C.gdk_window_get_event_compression(&C.GdkWindow) bool

fn C.gdk_window_set_event_compression(&C.GdkWindow, bool)

fn C.gdk_window_geometry_changed(&C.GdkWindow)

fn C.gdk_window_coords_from_parent(&C.GdkWindow, f64, f64, &f64, &f64)

fn C.gdk_window_coords_to_parent(&C.GdkWindow, f64, f64, &f64, &f64)

fn C.gdk_window_get_effective_parent(&C.GdkWindow) &C.GdkWindow

fn C.gdk_window_get_effective_toplevel(&C.GdkWindow) &C.GdkWindow
