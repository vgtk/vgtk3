module gtk

struct C.GtkLabel
struct C.GtkApplication
struct C.GtkApplicationWindow
struct C.GtkApplicationWindowClass
struct C.GtkWindow
struct C.GtkGrid
struct C.GtkContainer
struct C.GtkWidget
struct C.GtkWidgetPath
struct C.GtkAdjustment
struct C.GType
struct C.GValue
struct C.GParamSpec
struct C.GObjectClass
struct C.GtkContainerClass
pub struct C.GError

/* MAIN */
fn C.gtk_init(int, voidptr)
fn C.gtk_main()
fn C.gtk_main_quit()

/* WINDOW */
fn C.gtk_window_new(int) &Widget
fn C.gtk_window_set_title(&Widget, charptr)
fn C.gtk_window_set_wmclass(&Widget, charptr, charptr) // !DEPRECATED
fn C.gtk_window_set_resizable(&Widget, bool)
fn C.gtk_window_get_resizable(&Widget) bool
// fn C.gtk_window_add_accel_group(&Widget, &GtkAccelGroup)
// fn C.gtk_window_remove_accel_group(&Widget, &GtkAccelGroup)
fn C.gtk_window_activate_focus(&Widget) bool
fn C.gtk_window_activate_default(&Widget) bool
fn C.gtk_window_set_modal(&Widget, bool)
fn C.gtk_window_set_default_size(&Widget, int, int)
fn C.gtk_window_set_default_geometry(&Widget, int, int) // !DEPRECATED
// fn C.gtk_window_set_geometry_hints(&Widget, &Widget, &GdkGeometry, GdkWindowHints)
fn C.gtk_window_set_gravity(&Widget, int)
fn C.gtk_window_get_gravity(&Widget) int
fn C.gtk_window_set_position(&Widget, int)
fn C.gtk_window_set_transient_for(&Widget, &Widget)
fn C.gtk_window_set_attached_to(&Widget, &Widget)
fn C.gtk_window_set_destroy_with_parent(&Widget, bool)
fn C.gtk_window_set_hide_titlebar_when_maximized(&Widget, bool)
// fn C.gtk_window_set_screen(&Widget, &GdkScreen)
// fn C.gtk_window_get_screen(&Widget) &GdkScreen
fn C.gtk_window_is_active(&Widget) bool
fn C.gtk_window_is_maximized(&Widget) bool
fn C.gtk_window_has_toplevel_focus(&Widget) bool
// fn C.gtk_window_list_toplevels() &GList
fn C.gtk_window_add_mnemonic(&Widget, u32, &Widget)
fn C.gtk_window_remove_mnemonic(&Widget, u32, &Widget)
// fn C.gtk_window_mnemonic_activate(&Widget, u32, GdkModifierType) bool
// fn C.gtk_window_activate_key(&Widget, &GdkEventKey) bool
// fn C.gtk_window_propagate_key_event(&Widget, &GdkEventKey) bool
fn C.gtk_window_get_focus(&Widget) &Widget
fn C.gtk_window_set_focus(&Widget, &Widget)
fn C.gtk_window_get_default_widget(&Widget) &Widget
fn C.gtk_window_set_default(&Widget, &Widget)
fn C.gtk_window_present(&Widget)
fn C.gtk_window_present_with_time(&Widget, u32)
fn C.gtk_window_close(&Widget)
fn C.gtk_window_iconify(&Widget)
fn C.gtk_window_deiconify(&Widget)
fn C.gtk_window_stick(&Widget)
fn C.gtk_window_unstick(&Widget)
fn C.gtk_window_maximize(&Widget)
fn C.gtk_window_unmaximize(&Widget)
fn C.gtk_window_fullscreen(&Widget)
// fn C.gtk_window_fullscreen_on_monitor(&Widget, &GdkScreen, int)
fn C.gtk_window_unfullscreen(&Widget)
fn C.gtk_window_set_keep_above(&Widget, bool)
fn C.gtk_window_set_keep_below(&Widget, bool)
// fn C.gtk_window_begin_resize_drag(&Widget, GdkWindowEdge, int, int, int, u32)
fn C.gtk_window_begin_move_drag(&Widget, int, int, int, u32)
fn C.gtk_window_set_decorated(&Widget, bool)
fn C.gtk_window_set_deletable(&Widget, bool)
// fn C.gtk_window_set_mnemonic_modifier(&Widget, GdkModifierType)
// fn C.gtk_window_set_type_hint(&Widget, GdkWindowTypeHint)
fn C.gtk_window_set_skip_taskbar_hint(&Widget, bool)
fn C.gtk_window_set_skip_pager_hint(&Widget, bool)
fn C.gtk_window_set_urgency_hint(&Widget, bool)
fn C.gtk_window_set_accept_focus(&Widget, bool)
fn C.gtk_window_set_focus_on_map(&Widget, bool)
fn C.gtk_window_set_startup_id(&Widget, charptr)
fn C.gtk_window_set_role(&Widget, charptr)
fn C.gtk_window_get_decorated(&Widget) bool
fn C.gtk_window_get_deletable(&Widget) bool
// fn C.gtk_window_get_default_icon_list() &GList
fn C.gtk_window_get_default_icon_name()
fn C.gtk_window_get_default_size(&Widget, &int, &int)
fn C.gtk_window_get_destroy_with_parent(&Widget) bool
fn C.gtk_window_get_hide_titlebar_when_maximized(&Widget) bool
// fn C.gtk_window_get_icon(&Widget) &GdkPixbuf
// fn C.gtk_window_get_icon_list(&Widget) &GList
fn C.gtk_window_get_icon_name(&Widget)
// fn C.gtk_window_get_mnemonic_modifier(&Widget) GdkModifierType
fn C.gtk_window_get_modal(&Widget) bool
fn C.gtk_window_get_position(&Widget, &int, &int)
fn C.gtk_window_get_role(&Widget)
fn C.gtk_window_get_size(&Widget, &int, &int)
fn C.gtk_window_get_title(&Widget) charptr
fn C.gtk_window_get_transient_for(&Widget) &Widget
fn C.gtk_window_get_attached_to(&Widget) &Widget
// fn C.gtk_window_get_type_hint(&Widget) GdkWindowTypeHint
fn C.gtk_window_get_skip_taskbar_hint(&Widget) bool
fn C.gtk_window_get_skip_pager_hint(&Widget) bool
fn C.gtk_window_get_urgency_hint(&Widget) bool
fn C.gtk_window_get_accept_focus(&Widget) bool
fn C.gtk_window_get_focus_on_map(&Widget) bool
// fn C.gtk_window_get_group(&Widget) &WidgetGroup
fn C.gtk_window_has_group(&Widget) bool
fn C.gtk_window_get_window_type(&Widget) int
fn C.gtk_window_move(&Widget, int, int)
fn C.gtk_window_parse_geometry(&Widget, charptr) bool
fn C.gtk_window_reshow_with_initial_size(&Widget)
fn C.gtk_window_resize(&Widget, int, int)
fn C.gtk_window_resize_to_geometry(&Widget, int, int)
// fn C.gtk_window_set_default_icon_list(&GList)
// fn C.gtk_window_set_default_icon(&GdkPixbuf)
fn C.gtk_window_set_default_icon_from_file(charptr, &GError) bool
fn C.gtk_window_set_default_icon_name(charptr)
// fn C.gtk_window_set_icon(&Widget, &GdkPixbuf)
// fn C.gtk_window_set_icon_list(&Widget, &GList)
fn C.gtk_window_set_icon_from_file(&Widget, charptr, &GError) bool
fn C.gtk_window_set_icon_name(&Widget, charptr)
fn C.gtk_window_set_auto_startup_notification(bool)
fn C.gtk_window_get_opacity(&Widget) f64
fn C.gtk_window_set_opacity(&Widget, f64)
fn C.gtk_window_get_mnemonics_visible(&Widget) bool
fn C.gtk_window_set_mnemonics_visible(&Widget, bool)
fn C.gtk_window_get_focus_visible(&Widget) bool
fn C.gtk_window_set_focus_visible(&Widget, bool)
fn C.gtk_window_set_has_resize_grip(&Widget, bool)
fn C.gtk_window_get_has_resize_grip(&Widget) bool
fn C.gtk_window_resize_grip_is_visible(&Widget) bool
// fn C.gtk_window_get_resize_grip_area(&Widget, &GdkRectangle) bool
// fn C.gtk_window_get_application(&Widget) &GtkApplication
// fn C.gtk_window_set_application(&Widget, &GtkApplication)
fn C.gtk_window_set_has_user_ref_count(&Widget, bool)
fn C.gtk_window_set_titlebar(&Widget, &Widget)
fn C.gtk_window_get_titlebar(&Widget) &Widget
fn C.gtk_window_set_interactive_debugging(bool)

/* BUTTON */
fn C.gtk_button_new() &Widget
fn C.gtk_button_new_with_label(charptr) &Widget
fn C.gtk_button_new_with_mnemonic(charptr) &Widget
fn C.gtk_button_new_from_icon_name(charptr, int) &Widget
fn C.gtk_button_new_from_stock(charptr) &Widget
fn C.gtk_button_pressed(&Widget)
fn C.gtk_button_released(&Widget)
fn C.gtk_button_clicked(&Widget)
fn C.gtk_button_enter(&Widget)
fn C.gtk_button_leave(&Widget)
fn C.gtk_button_set_relief(&Widget, int)
fn C.gtk_button_get_relief(&Widget) int
fn C.gtk_button_get_label(&Widget) charptr
fn C.gtk_button_set_label(&Widget, charptr)
fn C.gtk_button_get_use_stock(&Widget) bool
fn C.gtk_button_set_use_stock(&Widget, bool)
fn C.gtk_button_get_use_underline(&Widget) bool
fn C.gtk_button_set_use_underline(&Widget, bool)
fn C.gtk_button_set_focus_on_click(&Widget, bool)
fn C.gtk_button_get_focus_on_click(&Widget) bool
fn C.gtk_button_set_alignment(&Widget, f32, f32)
fn C.gtk_button_get_alignment(&Widget, &f32, &f32)
fn C.gtk_button_set_image(&Widget, &Widget)
fn C.gtk_button_get_image(&Widget) &Widget
fn C.gtk_button_set_image_position(&Widget, int)
fn C.gtk_button_get_image_position(&Widget) int
fn C.gtk_button_set_always_show_image(&Widget, bool)
fn C.gtk_button_get_always_show_image(&Widget) bool
fn C.gtk_button_get_event_window(&Widget) &GdkWindow

/* ENTRY */
fn C.gtk_entry_new() &Widget
fn C.gtk_entry_get_text(&Widget) charptr
fn C.gtk_entry_set_invisible_char(&Widget, rune)
fn C.gtk_entry_set_text(&Widget, charptr)
fn C.gtk_entry_set_visibility(&Widget, bool)

/* ACCEL MAP */
fn C.gtk_accel_map_add_entry(charptr, int, int)

/* EDITABLE */
fn C.gtk_editable_set_editable(&Widget, bool)

/* BOX */
fn C.gtk_box_pack_start(&Widget, &Widget, bool, bool, int)

fn C.gtk_alignment_new(int, int, int, int) &Widget
fn C.gtk_hbox_new(bool, int) &Widget
fn C.gtk_vbox_new(bool, int) &Widget

/* MENU */
fn C.gtk_menu_new() &Widget

/* MENU BAR */
fn C.gtk_menu_bar_new() &Widget

/* MENU SHELL */
fn C.gtk_menu_shell_append(&Widget, &Widget)

/* MENU ITEM */
fn C.gtk_menu_item_new() &Widget
fn C.gtk_menu_item_get_accel_path(&Widget) charptr
fn C.gtk_menu_item_get_label(&Widget) charptr
fn C.gtk_menu_item_get_use_underline(&Widget) bool
fn C.gtk_menu_item_new_with_label(charptr) &Widget
fn C.gtk_menu_item_set_accel_path(&Widget, charptr)
fn C.gtk_menu_item_set_label(&Widget, charptr)
fn C.gtk_menu_item_set_submenu(&Widget, &Widget)
fn C.gtk_menu_item_set_use_underline(&Widget, bool)

/* LABEL */
fn C.gtk_label_new(charptr) &Widget
fn C.gtk_label_set_text(&Widget, charptr)
// fn C.gtk_label_set_attributes(&Widget, &PangoAttrList)
fn C.gtk_label_set_markup(&Widget, charptr)
fn C.gtk_label_set_markup_with_mnemonic(&Widget, charptr)
fn C.gtk_label_set_pattern(&Widget, charptr)
fn C.gtk_label_set_justify(&Widget, int)
fn C.gtk_label_set_xalign(&Widget, f32)
fn C.gtk_label_set_yalign(&Widget, f32)
// fn C.gtk_label_set_ellipsize(&Widget, PangoEllipsizeMode)
fn C.gtk_label_set_width_chars(&Widget, int)
fn C.gtk_label_set_max_width_chars(&Widget, int)
fn C.gtk_label_set_line_wrap(&Widget, bool)
// fn C.gtk_label_set_line_wrap_mode(&Widget, PangoWrapMode)
fn C.gtk_label_set_lines(&Widget, int)
fn C.gtk_label_get_layout_offsets(&Widget, &int, &int)
fn C.gtk_label_get_mnemonic_keyval(&Widget) u32
fn C.gtk_label_get_selectable(&Widget) bool
fn C.gtk_label_get_text(&Widget) charptr
fn C.gtk_label_new_with_mnemonic(charptr) &Widget
fn C.gtk_label_select_region(&Widget, int, int)
fn C.gtk_label_set_mnemonic_widget(&Widget, &Widget)
fn C.gtk_label_set_selectable(&Widget, bool)
fn C.gtk_label_set_text_with_mnemonic(&Widget, charptr)
// fn C.gtk_label_get_attributes(&Widget) &PangoAttrList
fn C.gtk_label_get_justify(&Widget) int
fn C.gtk_label_get_xalign(&Widget) f32
fn C.gtk_label_get_yalign(&Widget) f32
// fn C.gtk_label_get_ellipsize(&Widget) PangoEllipsizeMode
fn C.gtk_label_get_width_chars(&Widget) int
fn C.gtk_label_get_max_width_chars(&Widget) int
fn C.gtk_label_get_label(&Widget) charptr
// fn C.gtk_label_get_layout(&Widget) &PangoLayout
fn C.gtk_label_get_line_wrap(&Widget) bool
// fn C.gtk_label_get_line_wrap_mode(&Widget) PangoWrapMode
fn C.gtk_label_get_lines(&Widget) int
fn C.gtk_label_get_mnemonic_widget(&Widget) &Widget
fn C.gtk_label_get_selection_bounds(&Widget, &int, &int) bool
fn C.gtk_label_get_use_markup(&Widget) bool
fn C.gtk_label_get_use_underline(&Widget) bool
fn C.gtk_label_get_single_line_mode(&Widget) bool
fn C.gtk_label_get_angle(&Widget) f64
fn C.gtk_label_set_label(&Widget, charptr)
fn C.gtk_label_set_use_markup(&Widget, bool)
fn C.gtk_label_set_use_underline(&Widget, bool)
fn C.gtk_label_set_single_line_mode(&Widget, bool)
fn C.gtk_label_set_angle(&Widget, f64)
fn C.gtk_label_get_current_uri(&Widget) charptr
fn C.gtk_label_set_track_visited_links(&Widget, bool)
fn C.gtk_label_get_track_visited_links(&Widget) bool

/* APPLICATION */
fn C.gtk_application_new(charptr, int/* GApplicationFlags */) &GtkApplication
fn C.g_application_run(&GtkApplication, int, charptr) int
fn C.gtk_application_add_window(&GtkApplication, &GtkWindow) 
fn C.gtk_application_remove_window(&GtkApplication, &GtkWindow) 
fn C.gtk_application_get_windows(&GtkApplication) &GList
fn C.gtk_application_get_window_by_id(&GtkApplication, u32) &GtkWindow
fn C.gtk_application_get_active_window(&GtkApplication) &GtkWindow
fn C.gtk_application_inhibit(&GtkApplication, &GtkWindow, int/* GtkApplicationInhibitFlags */, charptr) u32
fn C.gtk_application_uninhibit(&GtkApplication, u32) 
fn C.gtk_application_is_inhibited(&GtkApplication, int/* GtkApplicationInhibitFlags */) bool
fn C.gtk_application_prefers_app_menu(&GtkApplication) bool
// fn C.gtk_application_get_app_menu(&GtkApplication) &GMenuModel
// fn C.gtk_application_set_app_menu(&GtkApplication, &GMenuModel) 
// fn C.gtk_application_get_menubar(&GtkApplication) &GMenuModel
// fn C.gtk_application_set_menubar(&GtkApplication, &GMenuModel) 
// fn C.gtk_application_get_menu_by_id(&GtkApplication, charptr) &GMenu
// fn C.gtk_application_add_accelerator(&GtkApplication, charptr, &charptr, &GVariant) 
// fn C.gtk_application_remove_accelerator(&GtkApplication, &charptr, &GVariant) 
fn C.gtk_application_list_action_descriptions(&GtkApplication) &charptr
fn C.gtk_application_get_accels_for_action(&GtkApplication, &charptr) &charptr
fn C.gtk_application_set_accels_for_action(&GtkApplication, &charptr, &charptr) 
fn C.gtk_application_get_actions_for_accel(&GtkApplication, &charptr) &charptr


fn C.gtk_application_window_new(&GtkApplication) &Widget
fn C.gtk_application_window_set_show_menubar(&GtkApplicationWindow, bool)
fn C.gtk_application_window_get_show_menubar(&GtkApplicationWindow) bool
fn C.gtk_application_window_get_id(&GtkApplicationWindow) u32

/* CONTAINER */
fn C.gtk_container_add(&GtkContainer, &GtkWidget) 
fn C.gtk_container_remove(&GtkContainer, &GtkWidget) 
fn C.gtk_container_add_with_properties(&GtkContainer, &GtkWidget, &charptr) 
fn C.gtk_container_get_resize_mode(&GtkContainer) int /* GtkResizeMode */
fn C.gtk_container_set_resize_mode(&GtkContainer, int /* GtkResizeMode */) 
fn C.gtk_container_check_resize(&GtkContainer) 
fn C.gtk_container_foreach(&GtkContainer, fn()/* GtkCallback */, voidptr/* gpointer */) 
fn C.gtk_container_get_children(&GtkContainer) &GList
fn C.gtk_container_get_path_for_child(&GtkContainer, &GtkWidget) &GtkWidgetPath
fn C.gtk_container_set_reallocate_redraws(&GtkContainer, bool) 
fn C.gtk_container_get_focus_child(&GtkContainer) &GtkWidget
fn C.gtk_container_set_focus_child(&GtkContainer, &GtkWidget) 
fn C.gtk_container_get_focus_vadjustment(&GtkContainer) &GtkAdjustment
fn C.gtk_container_set_focus_vadjustment(&GtkContainer, &GtkAdjustment) 
fn C.gtk_container_get_focus_hadjustment(&GtkContainer) &GtkAdjustment
fn C.gtk_container_set_focus_hadjustment(&GtkContainer, &GtkAdjustment)
fn C.gtk_container_resize_children(&GtkContainer)
fn C.gtk_container_child_type(&GtkContainer) GType
fn C.gtk_container_child_get(&GtkContainer, &GtkWidget, &charptr)
fn C.gtk_container_child_set(&GtkContainer, &GtkWidget, &charptr)
fn C.gtk_container_child_get_property(&GtkContainer, &GtkWidget, &charptr, &GValue)
fn C.gtk_container_child_set_property(&GtkContainer, &GtkWidget, &charptr, &GValue)
fn C.gtk_container_child_get_valist(&GtkContainer, &GtkWidget, &charptr, va_list)
fn C.gtk_container_child_set_valist(&GtkContainer, &GtkWidget, &charptr, va_list)
fn C.gtk_container_child_notify(&GtkContainer, &GtkWidget, &charptr)
fn C.gtk_container_child_notify_by_pspec(&GtkContainer, &GtkWidget, &GParamSpec)
fn C.gtk_container_forall(&GtkContainer, fn()/* GtkCallback */, voidptr /* gpointer */)
fn C.gtk_container_get_border_width(&GtkContainer) u32
fn C.gtk_container_set_border_width(&GtkContainer, u32)
// fn C.gtk_container_propagate_draw(&GtkContainer, &GtkWidget, &cairo_t) 
fn C.gtk_container_get_focus_chain(&GtkContainer, &GList) bool
fn C.gtk_container_set_focus_chain(&GtkContainer, &GList)
fn C.gtk_container_unset_focus_chain(&GtkContainer)
fn C.gtk_container_class_find_child_property(&GObjectClass, &charptr) &GParamSpec
fn C.gtk_container_class_install_child_property(&GtkContainerClass, u32, &GParamSpec)
fn C.gtk_container_class_install_child_properties(&GtkContainerClass, u32, &GParamSpec)
fn C.gtk_container_class_list_child_properties(&GObjectClass, &u32) &GParamSpec
fn C.gtk_container_class_handle_border_width(&GtkContainerClass) 

/* GRID */
fn C.gtk_grid_new() &Widget
fn C.gtk_grid_attach(&GtkGrid, &Widget, int, int, int, int) 
fn C.gtk_grid_attach_next_to(&GtkGrid, &Widget, &Widget, int /* GtkPositionType */, int, int) 
fn C.gtk_grid_get_child_at(&GtkGrid, int, int) &Widget
fn C.gtk_grid_insert_row(&GtkGrid, int)
fn C.gtk_grid_insert_column(&GtkGrid, int)
fn C.gtk_grid_remove_row(&GtkGrid, int) 
fn C.gtk_grid_remove_column(&GtkGrid, int) 
fn C.gtk_grid_insert_next_to(&GtkGrid, &Widget, int /* GtkPositionType */) 
fn C.gtk_grid_set_row_homogeneous(&GtkGrid, bool) 
fn C.gtk_grid_get_row_homogeneous(&GtkGrid) bool
fn C.gtk_grid_set_row_spacing(&GtkGrid, u32) 
fn C.gtk_grid_get_row_spacing(&GtkGrid) u32
fn C.gtk_grid_set_column_homogeneous(&GtkGrid, bool) 
fn C.gtk_grid_get_column_homogeneous(&GtkGrid) bool
fn C.gtk_grid_set_column_spacing(&GtkGrid, u32) 
fn C.gtk_grid_get_column_spacing(&GtkGrid) u32
fn C.gtk_grid_get_baseline_row(&GtkGrid) int
fn C.gtk_grid_set_baseline_row(&GtkGrid, int) 
fn C.gtk_grid_get_row_baseline_position(&GtkGrid, int) int /* GtkBaselinePosition */
fn C.gtk_grid_set_row_baseline_position(&GtkGrid, int, int /* GtkBaselinePosition */) 

/* WIDGET */
// fn C.gtk_widget_new(GType, charptr) &Widget
fn C.gtk_widget_destroy(&Widget)
fn C.gtk_widget_in_destruction(&Widget) bool
fn C.gtk_widget_destroyed(&Widget, &Widget)
fn C.gtk_widget_unparent(&Widget)
fn C.gtk_widget_show(&Widget)
fn C.gtk_widget_show_now(&Widget)
fn C.gtk_widget_hide(&Widget)
fn C.gtk_widget_show_all(&Widget)
fn C.gtk_widget_map(&Widget)
fn C.gtk_widget_unmap(&Widget)
fn C.gtk_widget_realize(&Widget)
fn C.gtk_widget_unrealize(&Widget)
// fn C.gtk_widget_draw(&Widget, &cairo_t)
fn C.gtk_widget_queue_draw(&Widget)
fn C.gtk_widget_queue_resize(&Widget)
fn C.gtk_widget_queue_resize_no_redraw(&Widget)
fn C.gtk_widget_queue_allocate(&Widget)
// fn C.gtk_widget_get_frame_clock(&Widget) &GdkFrameClock
fn C.gtk_widget_get_scale_factor(&Widget) int
// fn C.gtk_widget_add_tick_callback(&Widget, GtkTickCallback, gpointer, GDestroyNotify) u32
fn C.gtk_widget_remove_tick_callback(&Widget, u32)
// fn C.gtk_widget_size_request(&Widget, &GtkRequisition)
// fn C.gtk_widget_get_child_requisition(&Widget, &GtkRequisition)
// fn C.gtk_widget_size_allocate(&Widget, &GtkAllocation)
// fn C.gtk_widget_size_allocate_with_baseline(&Widget, &GtkAllocation, int)
// fn C.gtk_widget_add_accelerator(&Widget, charptr, &GtkAccelGroup, u32, GdkModifierType, GtkAccelFlags)
// fn C.gtk_widget_remove_accelerator(&Widget, &GtkAccelGroup, u32, GdkModifierType) bool
// fn C.gtk_widget_set_accel_path(&Widget, charptr, &GtkAccelGroup)
// fn C.gtk_widget_list_accel_closures(&Widget) &GList
fn C.gtk_widget_can_activate_accel(&Widget, u32) bool
// fn C.gtk_widget_event(&Widget, &GdkEvent) bool
fn C.gtk_widget_activate(&Widget) bool
fn C.gtk_widget_reparent(&Widget, &Widget)
// fn C.gtk_widget_intersect(&Widget, &GdkRectangle, &GdkRectangle) bool
fn C.gtk_widget_is_focus(&Widget) bool
fn C.gtk_widget_grab_focus(&Widget)
fn C.gtk_widget_grab_default(&Widget)
fn C.gtk_widget_set_name(&Widget, charptr)
fn C.gtk_widget_get_name(&Widget)
fn C.gtk_widget_set_state(&Widget, int)
fn C.gtk_widget_set_sensitive(&Widget, bool)
fn C.gtk_widget_set_parent(&Widget, &Widget)
// fn C.gtk_widget_set_parent_window(&Widget, &GdkWindow)
// fn C.gtk_widget_get_parent_window(&Widget) &GdkWindow
fn C.gtk_widget_set_events(&Widget, int)
fn C.gtk_widget_get_events(&Widget) int
fn C.gtk_widget_add_events(&Widget, int)
// fn C.gtk_widget_set_device_events(&Widget, &GdkDevice, GdkEventMask)
// fn C.gtk_widget_get_device_events(&Widget, &GdkDevice) GdkEventMask
// fn C.gtk_widget_add_device_events(&Widget, &GdkDevice, GdkEventMask)
// fn C.gtk_widget_set_device_enabled(&Widget, &GdkDevice, bool)
// fn C.gtk_widget_get_device_enabled(&Widget, &GdkDevice) bool
fn C.gtk_widget_get_toplevel(&Widget) &Widget
// fn C.gtk_widget_get_ancestor(&Widget, GType) &Widget
// fn C.gtk_widget_get_visual(&Widget) &GdkVisual
// fn C.gtk_widget_set_visual(&Widget, &GdkVisual)
fn C.gtk_widget_get_pointer(&Widget, &int, &int)
fn C.gtk_widget_is_ancestor(&Widget, &Widget) bool
fn C.gtk_widget_translate_coordinates(&Widget, &Widget, int, int, &int, &int) bool
fn C.gtk_widget_hide_on_delete(&Widget) bool
// fn C.gtk_widget_set_style(&Widget, &GtkStyle)
fn C.gtk_widget_ensure_style(&Widget)
// fn C.gtk_widget_get_style(&Widget) &GtkStyle
fn C.gtk_widget_reset_rc_styles(&Widget)
// fn C.gtk_widget_get_default_style() &GtkStyle
fn C.gtk_widget_set_direction(&Widget, int)
fn C.gtk_widget_get_direction(&Widget) int
fn C.gtk_widget_set_default_direction(int)
fn C.gtk_widget_get_default_direction() int
// fn C.gtk_widget_shape_combine_region(&Widget, &cairo_region_t)
// fn C.gtk_widget_input_shape_combine_region(&Widget, &cairo_region_t)
fn C.gtk_widget_path(&Widget, &u32, charptr, charptr)
fn C.gtk_widget_class_path(&Widget, &u32, charptr, charptr)
fn C.gtk_widget_get_composite_name(&Widget) charptr
// fn C.gtk_widget_override_background_color(&Widget, /* GtkStateFlags */ int, &GdkRGBA)
// fn C.gtk_widget_override_color(&Widget, /* GtkStateFlags */ int, &GdkRGBA)
// fn C.gtk_widget_override_font(&Widget, &PangoFontDescription)
// fn C.gtk_widget_override_symbolic_color(&Widget, charptr, &GdkRGBA)
// fn C.gtk_widget_override_cursor(&Widget, &GdkRGBA, &GdkRGBA)
// fn C.gtk_widget_modify_style(&Widget, &GtkRcStyle)
// fn C.gtk_widget_get_modifier_style(&Widget) &GtkRcStyle
// fn C.gtk_widget_modify_fg(&Widget, int, &GdkColor)
// fn C.gtk_widget_modify_bg(&Widget, int, &GdkColor)
// fn C.gtk_widget_modify_text(&Widget, int, &GdkColor)
// fn C.gtk_widget_modify_base(&Widget, int, &GdkColor)
// fn C.gtk_widget_modify_font(&Widget, &PangoFontDescription)
// fn C.gtk_widget_modify_cursor(&Widget, &GdkColor, &GdkColor)
// fn C.gtk_widget_create_pango_context(&Widget) &PangoContext
// fn C.gtk_widget_get_pango_context(&Widget) &PangoContext
// fn C.gtk_widget_set_font_options(&Widget, &cairo_font_options_t)
// fn C.gtk_widget_get_font_options(&Widget) &cairo_font_options_t
// fn C.gtk_widget_set_font_map(&Widget, &PangoFontMap)
// fn C.gtk_widget_get_font_map(&Widget) &PangoFontMap
// fn C.gtk_widget_create_pango_layout(&Widget, charptr) &PangoLayout
// fn C.gtk_widget_render_icon(&Widget, charptr, GtkIconSize, charptr) &GdkPixbuf
// fn C.gtk_widget_render_icon_pixbuf(&Widget, charptr, GtkIconSize) &GdkPixbuf
fn C.gtk_widget_pop_composite_child()
fn C.gtk_widget_push_composite_child()
fn C.gtk_widget_queue_draw_area(&Widget, int, int, int, int)
// fn C.gtk_widget_queue_draw_region(&Widget, &cairo_region_t)
fn C.gtk_widget_set_app_paintable(&Widget, bool)
fn C.gtk_widget_set_double_buffered(&Widget, bool)
fn C.gtk_widget_set_redraw_on_allocate(&Widget, bool)
fn C.gtk_widget_set_composite_name(&Widget, charptr)
fn C.gtk_widget_mnemonic_activate(&Widget, bool) bool
// fn C.gtk_widget_class_install_style_property(&WidgetClass, &GParamSpec)
// fn C.gtk_widget_class_install_style_property_parser(&WidgetClass, &GParamSpec, GtkRcPropertyParser)
// fn C.gtk_widget_class_find_style_property(&WidgetClass, charptr) &GParamSpec
// fn C.gtk_widget_class_list_style_properties(&WidgetClass, &u32) &GParamSpec
// fn C.gtk_widget_region_intersect(&Widget, &cairo_region_t) &cairo_region_t
// fn C.gtk_widget_send_expose(&Widget, &GdkEvent) int
// fn C.gtk_widget_send_focus_change(&Widget, &GdkEvent) bool
fn C.gtk_widget_style_get(&Widget, charptr)
// fn C.gtk_widget_style_get_property(&Widget, charptr, &GValue)
// fn C.gtk_widget_style_get_valist(&Widget, charptr, va_list)
// fn C.gtk_widget_style_attach(&Widget)
// fn C.gtk_widget_class_set_accessible_type(&WidgetClass, GType)
// fn C.gtk_widget_class_set_accessible_role(&WidgetClass, AtkRole)
// fn C.gtk_widget_get_accessible(&Widget) &AtkObject
// fn C.gtk_widget_child_focus(&Widget, int) bool
fn C.gtk_widget_child_notify(&Widget, charptr)
fn C.gtk_widget_freeze_child_notify(&Widget)
fn C.gtk_widget_get_child_visible(&Widget) bool
fn C.gtk_widget_get_parent(&Widget) &Widget
// fn C.gtk_widget_get_settings(&Widget) &GtkSettings
// fn C.gtk_widget_get_clipboard(&Widget, GdkAtom) &GtkClipboard
// fn C.gtk_widget_get_display(&Widget) &GdkDisplay
// fn C.gtk_widget_get_root_window(&Widget) &GdkWindow
// fn C.gtk_widget_get_screen(&Widget) &GdkScreen
fn C.gtk_widget_has_screen(&Widget) bool
fn C.gtk_widget_get_size_request(&Widget, &int, &int)
fn C.gtk_widget_set_child_visible(&Widget, bool)
fn C.gtk_widget_set_size_request(&Widget, int, int)
fn C.gtk_widget_thaw_child_notify(&Widget)
fn C.gtk_widget_set_no_show_all(&Widget, bool)
fn C.gtk_widget_get_no_show_all(&Widget) bool
// fn C.gtk_widget_list_mnemonic_labels(&Widget) &GList
fn C.gtk_widget_add_mnemonic_label(&Widget, &Widget)
fn C.gtk_widget_remove_mnemonic_label(&Widget, &Widget)
fn C.gtk_widget_is_composited(&Widget) bool
fn C.gtk_widget_error_bell(&Widget)
fn C.gtk_widget_keynav_failed(&Widget, int) bool
fn C.gtk_widget_get_tooltip_markup(&Widget) charptr
fn C.gtk_widget_set_tooltip_markup(&Widget, charptr)
fn C.gtk_widget_get_tooltip_text(&Widget) charptr
fn C.gtk_widget_set_tooltip_text(&Widget, charptr)
fn C.gtk_widget_get_tooltip_window(&Widget) &Widget
fn C.gtk_widget_set_tooltip_window(&Widget, &Widget)
fn C.gtk_widget_get_has_tooltip(&Widget) bool
fn C.gtk_widget_set_has_tooltip(&Widget, bool)
fn C.gtk_widget_trigger_tooltip_query(&Widget)
// fn C.gtk_widget_get_window(&Widget) &GdkWindow
// fn C.gtk_widget_register_window(&Widget, &GdkWindow)
// fn C.gtk_widget_unregister_window(&Widget, &GdkWindow)
// fn C.gtk_cairo_should_draw_window(&cairo_t, &GdkWindow) bool
// fn C.gtk_cairo_transform_to_window(&cairo_t, &Widget, &GdkWindow)
fn C.gtk_widget_get_allocated_width(&Widget) int
fn C.gtk_widget_get_allocated_height(&Widget) int
// fn C.gtk_widget_get_allocation(&Widget, &GtkAllocation)
// fn C.gtk_widget_set_allocation(&Widget, &GtkAllocation)
fn C.gtk_widget_get_allocated_baseline(&Widget) int
// fn C.gtk_widget_get_allocated_size(&Widget, &GtkAllocation, &int)
// fn C.gtk_widget_get_clip(&Widget, &GtkAllocation)
// fn C.gtk_widget_set_clip(&Widget, &GtkAllocation)
fn C.gtk_widget_get_app_paintable(&Widget) bool
fn C.gtk_widget_get_can_default(&Widget) bool
fn C.gtk_widget_set_can_default(&Widget, bool)
fn C.gtk_widget_get_can_focus(&Widget) bool
fn C.gtk_widget_set_can_focus(&Widget, bool)
fn C.gtk_widget_get_focus_on_click(&Widget) bool
fn C.gtk_widget_set_focus_on_click(&Widget, bool)
fn C.gtk_widget_get_double_buffered(&Widget) bool
fn C.gtk_widget_get_has_window(&Widget) bool
fn C.gtk_widget_set_has_window(&Widget, bool)
fn C.gtk_widget_get_sensitive(&Widget) bool
fn C.gtk_widget_is_sensitive(&Widget) bool
fn C.gtk_widget_get_state(&Widget) int
fn C.gtk_widget_get_visible(&Widget) bool
fn C.gtk_widget_is_visible(&Widget) bool
fn C.gtk_widget_set_visible(&Widget, bool)
fn C.gtk_widget_set_state_flags(&Widget, int, bool)
fn C.gtk_widget_unset_state_flags(&Widget, int)
fn C.gtk_widget_get_state_flags(&Widget) int
fn C.gtk_widget_has_default(&Widget) bool
fn C.gtk_widget_has_focus(&Widget) bool
fn C.gtk_widget_has_visible_focus(&Widget) bool
fn C.gtk_widget_has_grab(&Widget) bool
fn C.gtk_widget_has_rc_style(&Widget) bool
fn C.gtk_widget_is_drawable(&Widget) bool
fn C.gtk_widget_is_toplevel(&Widget) bool
// fn C.gtk_widget_set_window(&Widget, &GdkWindow)
fn C.gtk_widget_set_receives_default(&Widget, bool)
fn C.gtk_widget_get_receives_default(&Widget) bool
fn C.gtk_widget_set_support_multidevice(&Widget, bool)
fn C.gtk_widget_get_support_multidevice(&Widget) bool
fn C.gtk_widget_set_realized(&Widget, bool)
fn C.gtk_widget_get_realized(&Widget) bool
fn C.gtk_widget_set_mapped(&Widget, bool)
fn C.gtk_widget_get_mapped(&Widget) bool
// fn C.gtk_widget_get_requisition(&Widget, &GtkRequisition) 
// fn C.gtk_widget_device_is_shadowed(&Widget, &GdkDevice) bool
// fn C.gtk_widget_get_modifier_mask(&Widget, GdkModifierIntent) GdkModifierType
// fn C.gtk_widget_insert_action_group(&Widget, charptr, &GActionGroup)
fn C.gtk_widget_get_opacity(&Widget) f64
fn C.gtk_widget_set_opacity(&Widget, f64)
fn C.gtk_widget_list_action_prefixes(&Widget)
// fn C.gtk_widget_get_action_group(&Widget, charptr) &GActionGroup
// fn C.gtk_widget_get_path(&Widget) &WidgetPath
// fn C.gtk_widget_get_style_context(&Widget) &GtkStyleContext
fn C.gtk_widget_reset_style(&Widget)
// fn C.gtk_widget_class_get_css_name(&WidgetClass)
// fn C.gtk_widget_class_set_css_name(&WidgetClass, charptr)
// fn C.gtk_requisition_new() &GtkRequisition
// fn C.gtk_requisition_copy(&GtkRequisition) &GtkRequisition
// fn C.gtk_requisition_free(&GtkRequisition)
fn C.gtk_widget_get_preferred_height(&Widget, &int, &int)
fn C.gtk_widget_get_preferred_width(&Widget, &int, &int)
fn C.gtk_widget_get_preferred_height_for_width(&Widget, int, &int, &int)
fn C.gtk_widget_get_preferred_width_for_height(&Widget, int, &int, &int)
fn C.gtk_widget_get_preferred_height_and_baseline_for_width(&Widget, int, &int, &int, &int, &int)
fn C.gtk_widget_get_request_mode(&Widget) int
// fn C.gtk_widget_get_preferred_size(&Widget, &GtkRequisition, &GtkRequisition)
// fn C.gtk_distribute_natural_allocation(int, u32, &GtkRequestedSize) int
fn C.gtk_widget_get_halign(&Widget) int
fn C.gtk_widget_set_halign(&Widget, int)
fn C.gtk_widget_get_valign(&Widget) int
fn C.gtk_widget_get_valign_with_baseline(&Widget) int
fn C.gtk_widget_set_valign(&Widget, int)
fn C.gtk_widget_get_margin_left(&Widget) int
fn C.gtk_widget_set_margin_left(&Widget, int)
fn C.gtk_widget_get_margin_right(&Widget) int
fn C.gtk_widget_set_margin_right(&Widget, int)
fn C.gtk_widget_get_margin_start(&Widget) int
fn C.gtk_widget_set_margin_start(&Widget, int)
fn C.gtk_widget_get_margin_end(&Widget) int
fn C.gtk_widget_set_margin_end(&Widget, int)
fn C.gtk_widget_get_margin_top(&Widget) int
fn C.gtk_widget_set_margin_top(&Widget, int)
fn C.gtk_widget_get_margin_bottom(&Widget) int
fn C.gtk_widget_set_margin_bottom(&Widget, int)
fn C.gtk_widget_get_hexpand(&Widget) bool
fn C.gtk_widget_set_hexpand(&Widget, bool)
fn C.gtk_widget_get_hexpand_set(&Widget) bool
fn C.gtk_widget_set_hexpand_set(&Widget, bool)
fn C.gtk_widget_get_vexpand(&Widget) bool
fn C.gtk_widget_set_vexpand(&Widget, bool)
fn C.gtk_widget_get_vexpand_set(&Widget) bool
fn C.gtk_widget_set_vexpand_set(&Widget, bool)
fn C.gtk_widget_queue_compute_expand(&Widget)
fn C.gtk_widget_compute_expand(&Widget, int) bool
fn C.gtk_widget_init_template(&Widget)
// fn C.gtk_widget_class_set_template(&WidgetClass, &GBytes)
// fn C.gtk_widget_class_set_template_from_resource(&WidgetClass, charptr)
// fn C.gtk_widget_get_template_child(&Widget, GType, charptr) &GObject
// fn C.gtk_widget_class_bind_template_child_full(&WidgetClass, charptr, bool, gssize)
// fn C.gtk_widget_class_bind_template_callback_full(&WidgetClass, charptr, GCallback)
// fn C.gtk_widget_class_set_connect_func(&WidgetClass, GtkBuilderConnectFunc, gpointer, GDestroyNotify)
// fn C.gtk_widget_class_bind_template_childwidget_class(TypeName) #define
// fn C.gtk_widget_class_bind_template_child_internalwidget_class(TypeName) #define
// fn C.gtk_widget_class_bind_template_child_privatewidget_class(TypeName) #define
// fn C.gtk_widget_class_bind_template_child_internal_privatewidget_class(TypeName) #define
// fn C.gtk_widget_class_bind_template_callbackwidget_class() #define

/* GOBJECT */
fn C.g_object_unref(voidptr)

// OTHERS
fn C.g_intern_static_string(charptr) charptr
fn C.g_signal_connect(&Widget, charptr, voidptr, voidptr) u32
