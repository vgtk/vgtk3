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
struct C.GtkContainerClass
struct C.GtkAllocation
struct C.GtkStyleContext
struct C.GtkRequisition
struct C.GtkRequestedSize
struct C.GtkBuilder
struct C.GtkBuildable
struct C.GtkShortcutsWindow
struct C.GtkActionable
struct C.GtkMessageType
struct C.GtkDialogFlags
struct C.GtkButtonsType
struct C.GtkAccelMap
struct C.GtkAccelKey
struct C.GtkAboutDialog
struct C.GtkLicense
struct C.GtkBin
struct C.GtkColorChooser
struct C.GtkOrientation
struct C.GtkToggleButton

/* MAIN */
fn C.gtk_init(int, voidptr)
fn C.gtk_main()
fn C.gtk_main_quit()

/* Bin */
fn C.gtk_bin_get_child(&GtkBin) &GtkWidget

/* ColorChooser */
fn C.gtk_color_chooser_get_rgba(&GtkColorChooser, &GdkRGBA)
fn C.gtk_color_chooser_set_rgba(&GtkColorChooser, &GdkRGBA)
fn C.gtk_color_chooser_get_use_alpha(&GtkColorChooser) bool
fn C.gtk_color_chooser_set_use_alpha(&GtkColorChooser, bool)
fn C.gtk_color_chooser_add_palette(&GtkColorChooser, GtkOrientation, int, int, &GdkRGBA)

/* WINDOW */
fn C.gtk_window_new(int) &GtkWidget
fn C.gtk_window_set_title(&GtkWidget, charptr)
fn C.gtk_window_set_wmclass(&GtkWidget, charptr, charptr) // !DEPRECATED
fn C.gtk_window_set_resizable(&GtkWidget, bool)
fn C.gtk_window_get_resizable(&GtkWidget) bool
// fn C.gtk_window_add_accel_group(&GtkWidget, &GtkAccelGroup)
// fn C.gtk_window_remove_accel_group(&GtkWidget, &GtkAccelGroup)
fn C.gtk_window_activate_focus(&GtkWidget) bool
fn C.gtk_window_activate_default(&GtkWidget) bool
fn C.gtk_window_set_modal(&GtkWidget, bool)
fn C.gtk_window_set_default_size(&GtkWidget, int, int)
fn C.gtk_window_set_default_geometry(&GtkWidget, int, int) // !DEPRECATED
// fn C.gtk_window_set_geometry_hints(&GtkWidget, &GtkWidget, &GdkGeometry, GdkWindowHints)
fn C.gtk_window_set_gravity(&GtkWidget, int)
fn C.gtk_window_get_gravity(&GtkWidget) int
fn C.gtk_window_set_position(&GtkWidget, int)
fn C.gtk_window_set_transient_for(&GtkWidget, &GtkWidget)
fn C.gtk_window_set_attached_to(&GtkWidget, &GtkWidget)
fn C.gtk_window_set_destroy_with_parent(&GtkWidget, bool)
fn C.gtk_window_set_hide_titlebar_when_maximized(&GtkWidget, bool)
// fn C.gtk_window_set_screen(&GtkWidget, &GdkScreen)
// fn C.gtk_window_get_screen(&GtkWidget) &GdkScreen
fn C.gtk_window_is_active(&GtkWidget) bool
fn C.gtk_window_is_maximized(&GtkWidget) bool
fn C.gtk_window_has_toplevel_focus(&GtkWidget) bool
// fn C.gtk_window_list_toplevels() &GList
fn C.gtk_window_add_mnemonic(&GtkWidget, u32, &GtkWidget)
fn C.gtk_window_remove_mnemonic(&GtkWidget, u32, &GtkWidget)
// fn C.gtk_window_mnemonic_activate(&GtkWidget, u32, GdkModifierType) bool
// fn C.gtk_window_activate_key(&GtkWidget, &GdkEventKey) bool
// fn C.gtk_window_propagate_key_event(&GtkWidget, &GdkEventKey) bool
fn C.gtk_window_get_focus(&GtkWidget) &GtkWidget
fn C.gtk_window_set_focus(&GtkWidget, &GtkWidget)
fn C.gtk_window_get_default_widget(&GtkWidget) &GtkWidget
fn C.gtk_window_set_default(&GtkWidget, &GtkWidget)
fn C.gtk_window_present(&GtkWidget)
fn C.gtk_window_present_with_time(&GtkWidget, u32)
fn C.gtk_window_close(&GtkWidget)
fn C.gtk_window_iconify(&GtkWidget)
fn C.gtk_window_deiconify(&GtkWidget)
fn C.gtk_window_stick(&GtkWidget)
fn C.gtk_window_unstick(&GtkWidget)
fn C.gtk_window_maximize(&GtkWidget)
fn C.gtk_window_unmaximize(&GtkWidget)
fn C.gtk_window_fullscreen(&GtkWidget)
// fn C.gtk_window_fullscreen_on_monitor(&GtkWidget, &GdkScreen, int)
fn C.gtk_window_unfullscreen(&GtkWidget)
fn C.gtk_window_set_keep_above(&GtkWidget, bool)
fn C.gtk_window_set_keep_below(&GtkWidget, bool)
// fn C.gtk_window_begin_resize_drag(&GtkWidget, GdkWindowEdge, int, int, int, u32)
fn C.gtk_window_begin_move_drag(&GtkWidget, int, int, int, u32)
fn C.gtk_window_set_decorated(&GtkWidget, bool)
fn C.gtk_window_set_deletable(&GtkWidget, bool)
// fn C.gtk_window_set_mnemonic_modifier(&GtkWidget, GdkModifierType)
// fn C.gtk_window_set_type_hint(&GtkWidget, GdkWindowTypeHint)
fn C.gtk_window_set_skip_taskbar_hint(&GtkWidget, bool)
fn C.gtk_window_set_skip_pager_hint(&GtkWidget, bool)
fn C.gtk_window_set_urgency_hint(&GtkWidget, bool)
fn C.gtk_window_set_accept_focus(&GtkWidget, bool)
fn C.gtk_window_set_focus_on_map(&GtkWidget, bool)
fn C.gtk_window_set_startup_id(&GtkWidget, charptr)
fn C.gtk_window_set_role(&GtkWidget, charptr)
fn C.gtk_window_get_decorated(&GtkWidget) bool
fn C.gtk_window_get_deletable(&GtkWidget) bool
// fn C.gtk_window_get_default_icon_list() &GList
fn C.gtk_window_get_default_icon_name()
fn C.gtk_window_get_default_size(&GtkWidget, &int, &int)
fn C.gtk_window_get_destroy_with_parent(&GtkWidget) bool
fn C.gtk_window_get_hide_titlebar_when_maximized(&GtkWidget) bool
// fn C.gtk_window_get_icon(&GtkWidget) &GdkPixbuf
// fn C.gtk_window_get_icon_list(&GtkWidget) &GList
fn C.gtk_window_get_icon_name(&GtkWidget)
// fn C.gtk_window_get_mnemonic_modifier(&GtkWidget) GdkModifierType
fn C.gtk_window_get_modal(&GtkWidget) bool
fn C.gtk_window_get_position(&GtkWidget, &int, &int)
fn C.gtk_window_get_role(&GtkWidget)
fn C.gtk_window_get_size(&GtkWidget, &int, &int)
fn C.gtk_window_get_title(&GtkWidget) charptr
fn C.gtk_window_get_transient_for(&GtkWidget) &GtkWidget
fn C.gtk_window_get_attached_to(&GtkWidget) &GtkWidget
// fn C.gtk_window_get_type_hint(&GtkWidget) GdkWindowTypeHint
fn C.gtk_window_get_skip_taskbar_hint(&GtkWidget) bool
fn C.gtk_window_get_skip_pager_hint(&GtkWidget) bool
fn C.gtk_window_get_urgency_hint(&GtkWidget) bool
fn C.gtk_window_get_accept_focus(&GtkWidget) bool
fn C.gtk_window_get_focus_on_map(&GtkWidget) bool
// fn C.gtk_window_get_group(&GtkWidget) &WidgetGroup
fn C.gtk_window_has_group(&GtkWidget) bool
fn C.gtk_window_get_window_type(&GtkWidget) int
fn C.gtk_window_move(&GtkWidget, int, int)
fn C.gtk_window_parse_geometry(&GtkWidget, charptr) bool
fn C.gtk_window_reshow_with_initial_size(&GtkWidget)
fn C.gtk_window_resize(&GtkWidget, int, int)
fn C.gtk_window_resize_to_geometry(&GtkWidget, int, int)
// fn C.gtk_window_set_default_icon_list(&GList)
// fn C.gtk_window_set_default_icon(&GdkPixbuf)
fn C.gtk_window_set_default_icon_from_file(charptr, &GError) bool
fn C.gtk_window_set_default_icon_name(charptr)
// fn C.gtk_window_set_icon(&GtkWidget, &GdkPixbuf)
// fn C.gtk_window_set_icon_list(&GtkWidget, &GList)
fn C.gtk_window_set_icon_from_file(&GtkWidget, charptr, &GError) bool
fn C.gtk_window_set_icon_name(&GtkWidget, charptr)
fn C.gtk_window_set_auto_startup_notification(bool)
fn C.gtk_window_get_opacity(&GtkWidget) f64
fn C.gtk_window_set_opacity(&GtkWidget, f64)
fn C.gtk_window_get_mnemonics_visible(&GtkWidget) bool
fn C.gtk_window_set_mnemonics_visible(&GtkWidget, bool)
fn C.gtk_window_get_focus_visible(&GtkWidget) bool
fn C.gtk_window_set_focus_visible(&GtkWidget, bool)
fn C.gtk_window_set_has_resize_grip(&GtkWidget, bool)
fn C.gtk_window_get_has_resize_grip(&GtkWidget) bool
fn C.gtk_window_resize_grip_is_visible(&GtkWidget) bool
// fn C.gtk_window_get_resize_grip_area(&GtkWidget, &GdkRectangle) bool
fn C.gtk_window_get_application(&GtkWidget) &GtkApplication
fn C.gtk_window_set_application(&GtkWidget, &GtkApplication)
fn C.gtk_window_set_has_user_ref_count(&GtkWidget, bool)
fn C.gtk_window_set_titlebar(&GtkWidget, &GtkWidget)
fn C.gtk_window_get_titlebar(&GtkWidget) &GtkWidget
fn C.gtk_window_set_interactive_debugging(bool)

/* DIALOG */
fn C.gtk_dialog_new() &GtkWidget
fn C.gtk_dialog_new_with_buttons(&charptr, &GtkWindow, int /* GtkDialogFlags */, charptr, int) &GtkWidget
fn C.gtk_dialog_run(&GtkWidget) int
fn C.gtk_dialog_response(&GtkWidget, int)
fn C.gtk_dialog_add_button(&GtkWidget, &charptr, int) &GtkWidget
fn C.gtk_dialog_add_buttons(&GtkWidget, &charptr)
fn C.gtk_dialog_add_action_widget(&GtkWidget, &GtkWidget, int)
fn C.gtk_dialog_set_default_response(&GtkWidget, int)
fn C.gtk_dialog_set_response_sensitive(&GtkWidget, int, bool)
fn C.gtk_dialog_get_response_for_widget(&GtkWidget, &GtkWidget) int
fn C.gtk_dialog_get_widget_for_response(&GtkWidget, int) &GtkWidget
fn C.gtk_dialog_get_action_area(&GtkWidget) &GtkWidget
fn C.gtk_dialog_get_content_area(&GtkWidget) &GtkWidget
fn C.gtk_dialog_get_header_bar(&GtkWidget) &GtkWidget
fn C.gtk_dialog_set_alternative_button_order(&GtkWidget, int)
fn C.gtk_dialog_set_alternative_button_order_from_array(&GtkWidget, int, &int)


/* BUTTON */
fn C.gtk_button_new() &GtkWidget
fn C.gtk_button_new_with_label(charptr) &GtkWidget
fn C.gtk_button_new_with_mnemonic(charptr) &GtkWidget
fn C.gtk_button_new_from_icon_name(charptr, int) &GtkWidget
fn C.gtk_button_new_from_stock(charptr) &GtkWidget
fn C.gtk_button_pressed(&GtkWidget)
fn C.gtk_button_released(&GtkWidget)
fn C.gtk_button_clicked(&GtkWidget)
fn C.gtk_button_enter(&GtkWidget)
fn C.gtk_button_leave(&GtkWidget)
fn C.gtk_button_set_relief(&GtkWidget, int)
fn C.gtk_button_get_relief(&GtkWidget) int
fn C.gtk_button_get_label(&GtkWidget) charptr
fn C.gtk_button_set_label(&GtkWidget, charptr)
fn C.gtk_button_get_use_stock(&GtkWidget) bool
fn C.gtk_button_set_use_stock(&GtkWidget, bool)
fn C.gtk_button_get_use_underline(&GtkWidget) bool
fn C.gtk_button_set_use_underline(&GtkWidget, bool)
fn C.gtk_button_set_focus_on_click(&GtkWidget, bool)
fn C.gtk_button_get_focus_on_click(&GtkWidget) bool
fn C.gtk_button_set_alignment(&GtkWidget, f32, f32)
fn C.gtk_button_get_alignment(&GtkWidget, &f32, &f32)
fn C.gtk_button_set_image(&GtkWidget, &GtkWidget)
fn C.gtk_button_get_image(&GtkWidget) &GtkWidget
fn C.gtk_button_set_image_position(&GtkWidget, int)
fn C.gtk_button_get_image_position(&GtkWidget) int
fn C.gtk_button_set_always_show_image(&GtkWidget, bool)
fn C.gtk_button_get_always_show_image(&GtkWidget) bool
fn C.gtk_button_get_event_window(&GtkWidget) &GdkWindow

/* ENTRY */
fn C.gtk_entry_new() &GtkWidget
// fn C.gtk_entry_new_with_buffer(&GtkEntryBuffer) &GtkWidget
// fn C.gtk_entry_get_buffer(&GtkWidget) &GtkEntryBuffer
// fn C.gtk_entry_set_buffer(&GtkWidget, &GtkEntryBuffer)
fn C.gtk_entry_set_text(&GtkWidget, &charptr)
fn C.gtk_entry_get_text(&GtkWidget) charptr
fn C.gtk_entry_get_text_length(&GtkWidget) u32
// fn C.gtk_entry_get_text_area(&GtkWidget, &GdkRectangle)
fn C.gtk_entry_set_visibility(&GtkWidget, bool)
fn C.gtk_entry_set_invisible_char(&GtkWidget, byte /* gunichar */)
fn C.gtk_entry_unset_invisible_char(&GtkWidget)
fn C.gtk_entry_set_max_length(&GtkWidget, int)
fn C.gtk_entry_get_activates_default(&GtkWidget) bool
fn C.gtk_entry_get_has_frame(&GtkWidget) bool
fn C.gtk_entry_get_inner_border(&GtkWidget)
fn C.gtk_entry_get_width_chars(&GtkWidget) int
fn C.gtk_entry_get_max_width_chars(&GtkWidget) int
fn C.gtk_entry_set_activates_default(&GtkWidget, bool)
fn C.gtk_entry_set_has_frame(&GtkWidget, bool)
// fn C.gtk_entry_set_inner_border(&GtkWidget, &GtkBorder)
fn C.gtk_entry_set_width_chars(&GtkWidget, int)
fn C.gtk_entry_set_max_width_chars(&GtkWidget, int)
fn C.gtk_entry_get_invisible_char(&GtkWidget) rune /* gunichar */
fn C.gtk_entry_set_alignment(&GtkWidget, f32)
fn C.gtk_entry_get_alignment(&GtkWidget) f32
fn C.gtk_entry_set_placeholder_text(&GtkWidget, &charptr)
fn C.gtk_entry_get_placeholder_text(&GtkWidget) charptr
fn C.gtk_entry_set_overwrite_mode(&GtkWidget, bool)
fn C.gtk_entry_get_overwrite_mode(&GtkWidget) bool
// fn C.gtk_entry_get_layout(&GtkWidget) &PangoLayout
fn C.gtk_entry_get_layout_offsets(&GtkWidget, &int, &int)
fn C.gtk_entry_layout_index_to_text_index(&GtkWidget, int) int
fn C.gtk_entry_text_index_to_layout_index(&GtkWidget, int) int
// fn C.gtk_entry_set_attributes(&GtkWidget, &PangoAttrList)
// fn C.gtk_entry_get_attributes(&GtkWidget) &PangoAttrList
fn C.gtk_entry_get_max_length(&GtkWidget) int
fn C.gtk_entry_get_visibility(&GtkWidget) bool
// fn C.gtk_entry_set_completion(&GtkWidget, &GtkEntryCompletion)
// fn C.gtk_entry_get_completion(&GtkWidget) &GtkEntryCompletion
fn C.gtk_entry_set_cursor_hadjustment(&GtkWidget, &GtkAdjustment)
fn C.gtk_entry_get_cursor_hadjustment(&GtkWidget) &GtkAdjustment
fn C.gtk_entry_set_progress_fraction(&GtkWidget, f64)
fn C.gtk_entry_get_progress_fraction(&GtkWidget) f64
fn C.gtk_entry_set_progress_pulse_step(&GtkWidget, f64)
fn C.gtk_entry_get_progress_pulse_step(&GtkWidget) f64
fn C.gtk_entry_progress_pulse(&GtkWidget)
// fn C.gtk_entry_im_context_filter_keypress(&GtkWidget, &GdkEventKey) bool
fn C.gtk_entry_reset_im_context(&GtkWidget)
// fn C.gtk_entry_get_tabs(&GtkWidget) &PangoTabArray
// fn C.gtk_entry_set_tabs(&GtkWidget, &PangoTabArray)
// fn C.gtk_entry_set_icon_from_pixbuf(&GtkWidget, GtkEntryIconPosition, &GdkPixbuf)
fn C.gtk_entry_set_icon_from_stock(&GtkWidget, int /* GtkEntryIconPosition */, &charptr)
fn C.gtk_entry_set_icon_from_icon_name(&GtkWidget, int /* GtkEntryIconPosition */, &charptr)
// fn C.gtk_entry_set_icon_from_gicon(&GtkWidget, int /* GtkEntryIconPosition */, &GIcon)
fn C.gtk_entry_get_icon_storage_type(&GtkWidget, int /* GtkEntryIconPosition */) int /* GtkImageType */
// fn C.gtk_entry_get_icon_pixbuf(&GtkWidget, int /* GtkEntryIconPosition */) &GdkPixbuf
fn C.gtk_entry_get_icon_stock(&GtkWidget, int /* GtkEntryIconPosition */) charptr
fn C.gtk_entry_get_icon_name(&GtkWidget, int /* GtkEntryIconPosition */) charptr
// fn C.gtk_entry_get_icon_gicon(&GtkWidget, int /* GtkEntryIconPosition */) &GIcon
fn C.gtk_entry_set_icon_activatable(&GtkWidget, int /* GtkEntryIconPosition */, bool)
fn C.gtk_entry_get_icon_activatable(&GtkWidget, int /* GtkEntryIconPosition */) bool
fn C.gtk_entry_set_icon_sensitive(&GtkWidget, int /* GtkEntryIconPosition */, bool)
fn C.gtk_entry_get_icon_sensitive(&GtkWidget, int /* GtkEntryIconPosition */) bool
fn C.gtk_entry_get_icon_at_pos(&GtkWidget, int, int) int
fn C.gtk_entry_set_icon_tooltip_text(&GtkWidget, int /* GtkEntryIconPosition */, &charptr)
fn C.gtk_entry_get_icon_tooltip_text(&GtkWidget, int /* GtkEntryIconPosition */) charptr
fn C.gtk_entry_set_icon_tooltip_markup(&GtkWidget, int /* GtkEntryIconPosition */, &charptr)
fn C.gtk_entry_get_icon_tooltip_markup(&GtkWidget, int /* GtkEntryIconPosition */) charptr
// fn C.gtk_entry_set_icon_drag_source(&GtkWidget, int /* GtkEntryIconPosition */, &GtkTargetList, GdkDragAction)
fn C.gtk_entry_get_current_icon_drag_source(&GtkWidget) int
// fn C.gtk_entry_get_icon_area(&GtkWidget, int /* GtkEntryIconPosition */, &GdkRectangle)
fn C.gtk_entry_set_input_purpose(&GtkWidget, int /* GtkInputPurpose */)
fn C.gtk_entry_get_input_purpose(&GtkWidget) int /* GtkInputPurpose */
fn C.gtk_entry_set_input_hints(&GtkWidget, int /* GtkInputHints */)
fn C.gtk_entry_get_input_hints(&GtkWidget) int /* GtkInputHints */
fn C.gtk_entry_grab_focus_without_selecting(&GtkWidget)


/* ACCEL MAP */
fn C.gtk_accel_map_add_entry(charptr, u32, GdkModifierType)
fn C.gtk_accel_map_lookup_entry(charptr, &GtkAccelKey) bool
fn C.gtk_accel_map_change_entry(charptr, u32, GdkModifierType, bool) bool
fn C.gtk_accel_map_load(charptr)
fn C.gtk_accel_map_save(charptr)
fn C.gtk_accel_map_foreach(voidptr, voidptr)
fn C.gtk_accel_map_load_fd(int)
fn C.gtk_accel_map_save_fd(int)
fn C.gtk_accel_map_load_scanner(&GScanner)
fn C.gtk_accel_map_add_filter(charptr)
fn C.gtk_accel_map_foreach_unfiltered(voidptr, voidptr)
fn C.gtk_accel_map_get() &GtkAccelMap
fn C.gtk_accel_map_lock_path(charptr)
fn C.gtk_accel_map_unlock_path(charptr)

/* EDITABLE */
fn C.gtk_editable_set_editable(&GtkWidget, bool)

/* BOX */
fn C.gtk_box_new(int/* GtkOrientation */, int) &GtkWidget
fn C.gtk_box_pack_start(&GtkWidget, &GtkWidget, bool, bool, u32)
fn C.gtk_box_pack_end(&GtkWidget, &GtkWidget, bool, bool, u32)
fn C.gtk_box_get_homogeneous(&GtkWidget) bool
fn C.gtk_box_set_homogeneous(&GtkWidget, bool)
fn C.gtk_box_get_spacing(&GtkWidget) int
fn C.gtk_box_set_spacing(&GtkWidget, int)
fn C.gtk_box_reorder_child(&GtkWidget, &GtkWidget, int)
fn C.gtk_box_query_child_packing(&GtkWidget, &GtkWidget, &bool, &bool, &u32, &int/* &GtkPackType */)
fn C.gtk_box_set_child_packing(&GtkWidget, &GtkWidget, bool, bool, u32, int/* GtkPackType */)
fn C.gtk_box_get_baseline_position(&GtkWidget) int /* GtkBaselinePosition */
fn C.gtk_box_set_baseline_position(&GtkWidget, int /* GtkBaselinePosition */)
fn C.gtk_box_get_center_widget(&GtkWidget) &GtkWidget
fn C.gtk_box_set_center_widget(&GtkWidget, &GtkWidget)

fn C.gtk_alignment_new(int, int, int, int) &GtkWidget
fn C.gtk_hbox_new(bool, int) &GtkWidget
fn C.gtk_vbox_new(bool, int) &GtkWidget

/* MENU */
fn C.gtk_menu_new() &GtkWidget

/* MENU BAR */
fn C.gtk_menu_bar_new() &GtkWidget

/* MENU SHELL */
fn C.gtk_menu_shell_append(&GtkWidget, &GtkWidget)

/* MENU ITEM */
fn C.gtk_menu_item_new() &GtkWidget
fn C.gtk_menu_item_get_accel_path(&GtkWidget) charptr
fn C.gtk_menu_item_get_label(&GtkWidget) charptr
fn C.gtk_menu_item_get_use_underline(&GtkWidget) bool
fn C.gtk_menu_item_new_with_label(charptr) &GtkWidget
fn C.gtk_menu_item_set_accel_path(&GtkWidget, charptr)
fn C.gtk_menu_item_set_label(&GtkWidget, charptr)
fn C.gtk_menu_item_set_submenu(&GtkWidget, &GtkWidget)
fn C.gtk_menu_item_set_use_underline(&GtkWidget, bool)

/* LABEL */
fn C.gtk_label_new(charptr) &GtkWidget
fn C.gtk_label_set_text(&GtkWidget, charptr)
// fn C.gtk_label_set_attributes(&GtkWidget, &PangoAttrList)
fn C.gtk_label_set_markup(&GtkWidget, charptr)
fn C.gtk_label_set_markup_with_mnemonic(&GtkWidget, charptr)
fn C.gtk_label_set_pattern(&GtkWidget, charptr)
fn C.gtk_label_set_justify(&GtkWidget, int)
fn C.gtk_label_set_xalign(&GtkWidget, f32)
fn C.gtk_label_set_yalign(&GtkWidget, f32)
// fn C.gtk_label_set_ellipsize(&GtkWidget, PangoEllipsizeMode)
fn C.gtk_label_set_width_chars(&GtkWidget, int)
fn C.gtk_label_set_max_width_chars(&GtkWidget, int)
fn C.gtk_label_set_line_wrap(&GtkWidget, bool)
// fn C.gtk_label_set_line_wrap_mode(&GtkWidget, PangoWrapMode)
fn C.gtk_label_set_lines(&GtkWidget, int)
fn C.gtk_label_get_layout_offsets(&GtkWidget, &int, &int)
fn C.gtk_label_get_mnemonic_keyval(&GtkWidget) u32
fn C.gtk_label_get_selectable(&GtkWidget) bool
fn C.gtk_label_get_text(&GtkWidget) charptr
fn C.gtk_label_new_with_mnemonic(charptr) &GtkWidget
fn C.gtk_label_select_region(&GtkWidget, int, int)
fn C.gtk_label_set_mnemonic_widget(&GtkWidget, &GtkWidget)
fn C.gtk_label_set_selectable(&GtkWidget, bool)
fn C.gtk_label_set_text_with_mnemonic(&GtkWidget, charptr)
// fn C.gtk_label_get_attributes(&GtkWidget) &PangoAttrList
fn C.gtk_label_get_justify(&GtkWidget) int
fn C.gtk_label_get_xalign(&GtkWidget) f32
fn C.gtk_label_get_yalign(&GtkWidget) f32
// fn C.gtk_label_get_ellipsize(&GtkWidget) PangoEllipsizeMode
fn C.gtk_label_get_width_chars(&GtkWidget) int
fn C.gtk_label_get_max_width_chars(&GtkWidget) int
fn C.gtk_label_get_label(&GtkWidget) charptr
// fn C.gtk_label_get_layout(&GtkWidget) &PangoLayout
fn C.gtk_label_get_line_wrap(&GtkWidget) bool
// fn C.gtk_label_get_line_wrap_mode(&GtkWidget) PangoWrapMode
fn C.gtk_label_get_lines(&GtkWidget) int
fn C.gtk_label_get_mnemonic_widget(&GtkWidget) &GtkWidget
fn C.gtk_label_get_selection_bounds(&GtkWidget, &int, &int) bool
fn C.gtk_label_get_use_markup(&GtkWidget) bool
fn C.gtk_label_get_use_underline(&GtkWidget) bool
fn C.gtk_label_get_single_line_mode(&GtkWidget) bool
fn C.gtk_label_get_angle(&GtkWidget) f64
fn C.gtk_label_set_label(&GtkWidget, charptr)
fn C.gtk_label_set_use_markup(&GtkWidget, bool)
fn C.gtk_label_set_use_underline(&GtkWidget, bool)
fn C.gtk_label_set_single_line_mode(&GtkWidget, bool)
fn C.gtk_label_set_angle(&GtkWidget, f64)
fn C.gtk_label_get_current_uri(&GtkWidget) charptr
fn C.gtk_label_set_track_visited_links(&GtkWidget, bool)
fn C.gtk_label_get_track_visited_links(&GtkWidget) bool

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
fn C.gtk_application_get_app_menu(&GtkApplication) &GMenuModel
fn C.gtk_application_set_app_menu(&GtkApplication, &GMenuModel)
fn C.gtk_application_get_menubar(&GtkApplication) &GMenuModel
fn C.gtk_application_set_menubar(&GtkApplication, &GMenuModel)
fn C.gtk_application_get_menu_by_id(&GtkApplication, charptr) &GMenu
fn C.gtk_application_add_accelerator(&GtkApplication, charptr, &charptr, &GVariant)
fn C.gtk_application_remove_accelerator(&GtkApplication, &charptr, &GVariant)
fn C.gtk_application_list_action_descriptions(&GtkApplication) &charptr
fn C.gtk_application_get_accels_for_action(&GtkApplication, &charptr) &charptr
fn C.gtk_application_set_accels_for_action(&GtkApplication, &charptr, &charptr)
fn C.gtk_application_get_actions_for_accel(&GtkApplication, &charptr) &charptr

/* ApplicationWindow */
fn C.gtk_application_window_new(&GtkApplication) &GtkWidget
fn C.gtk_application_window_set_show_menubar(&GtkApplicationWindow, bool)
fn C.gtk_application_window_get_show_menubar(&GtkApplicationWindow) bool
fn C.gtk_application_window_get_id(&GtkApplicationWindow) u32
fn C.gtk_application_window_set_help_overlay(&GtkApplicationWindow, &GtkShortcutsWindow)
fn C.gtk_application_window_get_help_overlay(&GtkApplicationWindow) &GtkShortcutsWindow

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
fn C.gtk_grid_new() &GtkWidget
fn C.gtk_grid_attach(&GtkGrid, &GtkWidget, int, int, int, int)
fn C.gtk_grid_attach_next_to(&GtkGrid, &GtkWidget, &GtkWidget, int /* GtkPositionType */, int, int)
fn C.gtk_grid_get_child_at(&GtkGrid, int, int) &GtkWidget
fn C.gtk_grid_insert_row(&GtkGrid, int)
fn C.gtk_grid_insert_column(&GtkGrid, int)
fn C.gtk_grid_remove_row(&GtkGrid, int)
fn C.gtk_grid_remove_column(&GtkGrid, int)
fn C.gtk_grid_insert_next_to(&GtkGrid, &GtkWidget, int /* GtkPositionType */)
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
// fn C.gtk_widget_new(GType, charptr) &GtkWidget
fn C.gtk_widget_destroy(&GtkWidget)
fn C.gtk_widget_in_destruction(&GtkWidget) bool
fn C.gtk_widget_destroyed(&GtkWidget, &GtkWidget)
fn C.gtk_widget_unparent(&GtkWidget)
fn C.gtk_widget_show(&GtkWidget)
fn C.gtk_widget_show_now(&GtkWidget)
fn C.gtk_widget_hide(&GtkWidget)
fn C.gtk_widget_show_all(&GtkWidget)
fn C.gtk_widget_map(&GtkWidget)
fn C.gtk_widget_unmap(&GtkWidget)
fn C.gtk_widget_realize(&GtkWidget)
fn C.gtk_widget_unrealize(&GtkWidget)
// fn C.gtk_widget_draw(&GtkWidget, &cairo_t)
fn C.gtk_widget_queue_draw(&GtkWidget)
fn C.gtk_widget_queue_resize(&GtkWidget)
fn C.gtk_widget_queue_resize_no_redraw(&GtkWidget)
fn C.gtk_widget_queue_allocate(&GtkWidget)
// fn C.gtk_widget_get_frame_clock(&GtkWidget) &GdkFrameClock
fn C.gtk_widget_get_scale_factor(&GtkWidget) int
// fn C.gtk_widget_add_tick_callback(&GtkWidget, GtkTickCallback, gpointer, GDestroyNotify) u32
fn C.gtk_widget_remove_tick_callback(&GtkWidget, u32)
// fn C.gtk_widget_size_request(&GtkWidget, &GtkRequisition)
// fn C.gtk_widget_get_child_requisition(&GtkWidget, &GtkRequisition)
// fn C.gtk_widget_size_allocate(&GtkWidget, &GtkAllocation)
// fn C.gtk_widget_size_allocate_with_baseline(&GtkWidget, &GtkAllocation, int)
// fn C.gtk_widget_add_accelerator(&GtkWidget, charptr, &GtkAccelGroup, u32, GdkModifierType, GtkAccelFlags)
// fn C.gtk_widget_remove_accelerator(&GtkWidget, &GtkAccelGroup, u32, GdkModifierType) bool
// fn C.gtk_widget_set_accel_path(&GtkWidget, charptr, &GtkAccelGroup)
// fn C.gtk_widget_list_accel_closures(&GtkWidget) &GList
fn C.gtk_widget_can_activate_accel(&GtkWidget, u32) bool
// fn C.gtk_widget_event(&GtkWidget, &GdkEvent) bool
fn C.gtk_widget_activate(&GtkWidget) bool
fn C.gtk_widget_reparent(&GtkWidget, &GtkWidget)
// fn C.gtk_widget_intersect(&GtkWidget, &GdkRectangle, &GdkRectangle) bool
fn C.gtk_widget_is_focus(&GtkWidget) bool
fn C.gtk_widget_grab_focus(&GtkWidget)
fn C.gtk_widget_grab_default(&GtkWidget)
fn C.gtk_widget_set_name(&GtkWidget, charptr)
fn C.gtk_widget_get_name(&GtkWidget)
fn C.gtk_widget_set_state(&GtkWidget, int)
fn C.gtk_widget_set_sensitive(&GtkWidget, bool)
fn C.gtk_widget_set_parent(&GtkWidget, &GtkWidget)
// fn C.gtk_widget_set_parent_window(&GtkWidget, &GdkWindow)
// fn C.gtk_widget_get_parent_window(&GtkWidget) &GdkWindow
fn C.gtk_widget_set_events(&GtkWidget, int)
fn C.gtk_widget_get_events(&GtkWidget) int
fn C.gtk_widget_add_events(&GtkWidget, int)
// fn C.gtk_widget_set_device_events(&GtkWidget, &GdkDevice, GdkEventMask)
// fn C.gtk_widget_get_device_events(&GtkWidget, &GdkDevice) GdkEventMask
// fn C.gtk_widget_add_device_events(&GtkWidget, &GdkDevice, GdkEventMask)
// fn C.gtk_widget_set_device_enabled(&GtkWidget, &GdkDevice, bool)
// fn C.gtk_widget_get_device_enabled(&GtkWidget, &GdkDevice) bool
fn C.gtk_widget_get_toplevel(&GtkWidget) &GtkWidget
fn C.gtk_widget_get_ancestor(&GtkWidget, GType) &GtkWidget
// fn C.gtk_widget_get_visual(&GtkWidget) &GdkVisual
// fn C.gtk_widget_set_visual(&GtkWidget, &GdkVisual)
fn C.gtk_widget_get_pointer(&GtkWidget, &int, &int)
fn C.gtk_widget_is_ancestor(&GtkWidget, &GtkWidget) bool
fn C.gtk_widget_translate_coordinates(&GtkWidget, &GtkWidget, int, int, &int, &int) bool
fn C.gtk_widget_hide_on_delete(&GtkWidget) bool
// fn C.gtk_widget_set_style(&GtkWidget, &GtkStyle)
fn C.gtk_widget_ensure_style(&GtkWidget)
// fn C.gtk_widget_get_style(&GtkWidget) &GtkStyle
fn C.gtk_widget_reset_rc_styles(&GtkWidget)
// fn C.gtk_widget_get_default_style() &GtkStyle
fn C.gtk_widget_set_direction(&GtkWidget, int)
fn C.gtk_widget_get_direction(&GtkWidget) int
fn C.gtk_widget_set_default_direction(int)
fn C.gtk_widget_get_default_direction() int
// fn C.gtk_widget_shape_combine_region(&GtkWidget, &cairo_region_t)
// fn C.gtk_widget_input_shape_combine_region(&GtkWidget, &cairo_region_t)
fn C.gtk_widget_path(&GtkWidget, &u32, charptr, charptr)
fn C.gtk_widget_class_path(&GtkWidget, &u32, charptr, charptr)
fn C.gtk_widget_get_composite_name(&GtkWidget) charptr
// fn C.gtk_widget_override_background_color(&GtkWidget, /* GtkStateFlags */ int, &GdkRGBA)
// fn C.gtk_widget_override_color(&GtkWidget, /* GtkStateFlags */ int, &GdkRGBA)
// fn C.gtk_widget_override_font(&GtkWidget, &PangoFontDescription)
// fn C.gtk_widget_override_symbolic_color(&GtkWidget, charptr, &GdkRGBA)
// fn C.gtk_widget_override_cursor(&GtkWidget, &GdkRGBA, &GdkRGBA)
// fn C.gtk_widget_modify_style(&GtkWidget, &GtkRcStyle)
// fn C.gtk_widget_get_modifier_style(&GtkWidget) &GtkRcStyle
// fn C.gtk_widget_modify_fg(&GtkWidget, int, &GdkColor)
// fn C.gtk_widget_modify_bg(&GtkWidget, int, &GdkColor)
// fn C.gtk_widget_modify_text(&GtkWidget, int, &GdkColor)
// fn C.gtk_widget_modify_base(&GtkWidget, int, &GdkColor)
// fn C.gtk_widget_modify_font(&GtkWidget, &PangoFontDescription)
// fn C.gtk_widget_modify_cursor(&GtkWidget, &GdkColor, &GdkColor)
// fn C.gtk_widget_create_pango_context(&GtkWidget) &PangoContext
// fn C.gtk_widget_get_pango_context(&GtkWidget) &PangoContext
// fn C.gtk_widget_set_font_options(&GtkWidget, &cairo_font_options_t)
// fn C.gtk_widget_get_font_options(&GtkWidget) &cairo_font_options_t
// fn C.gtk_widget_set_font_map(&GtkWidget, &PangoFontMap)
// fn C.gtk_widget_get_font_map(&GtkWidget) &PangoFontMap
// fn C.gtk_widget_create_pango_layout(&GtkWidget, charptr) &PangoLayout
// fn C.gtk_widget_render_icon(&GtkWidget, charptr, GtkIconSize, charptr) &GdkPixbuf
// fn C.gtk_widget_render_icon_pixbuf(&GtkWidget, charptr, GtkIconSize) &GdkPixbuf
fn C.gtk_widget_pop_composite_child()
fn C.gtk_widget_push_composite_child()
fn C.gtk_widget_queue_draw_area(&GtkWidget, int, int, int, int)
// fn C.gtk_widget_queue_draw_region(&GtkWidget, &cairo_region_t)
fn C.gtk_widget_set_app_paintable(&GtkWidget, bool)
fn C.gtk_widget_set_double_buffered(&GtkWidget, bool)
fn C.gtk_widget_set_redraw_on_allocate(&GtkWidget, bool)
fn C.gtk_widget_set_composite_name(&GtkWidget, charptr)
fn C.gtk_widget_mnemonic_activate(&GtkWidget, bool) bool
// fn C.gtk_widget_class_install_style_property(&WidgetClass, &GParamSpec)
// fn C.gtk_widget_class_install_style_property_parser(&WidgetClass, &GParamSpec, GtkRcPropertyParser)
// fn C.gtk_widget_class_find_style_property(&WidgetClass, charptr) &GParamSpec
// fn C.gtk_widget_class_list_style_properties(&WidgetClass, &u32) &GParamSpec
// fn C.gtk_widget_region_intersect(&GtkWidget, &cairo_region_t) &cairo_region_t
// fn C.gtk_widget_send_expose(&GtkWidget, &GdkEvent) int
// fn C.gtk_widget_send_focus_change(&GtkWidget, &GdkEvent) bool
fn C.gtk_widget_style_get(&GtkWidget, charptr)
fn C.gtk_widget_style_get_property(&GtkWidget, charptr, &GValue)
// fn C.gtk_widget_style_get_valist(&GtkWidget, charptr, va_list)
// fn C.gtk_widget_style_attach(&GtkWidget)
// fn C.gtk_widget_class_set_accessible_type(&WidgetClass, GType)
// fn C.gtk_widget_class_set_accessible_role(&WidgetClass, AtkRole)
// fn C.gtk_widget_get_accessible(&GtkWidget) &AtkObject
fn C.gtk_widget_child_focus(&GtkWidget, int) bool
fn C.gtk_widget_child_notify(&GtkWidget, charptr)
fn C.gtk_widget_freeze_child_notify(&GtkWidget)
fn C.gtk_widget_get_child_visible(&GtkWidget) bool
fn C.gtk_widget_get_parent(&GtkWidget) &GtkWidget
// fn C.gtk_widget_get_settings(&GtkWidget) &GtkSettings
// fn C.gtk_widget_get_clipboard(&GtkWidget, GdkAtom) &GtkClipboard
// fn C.gtk_widget_get_display(&GtkWidget) &GdkDisplay
// fn C.gtk_widget_get_root_window(&GtkWidget) &GdkWindow
// fn C.gtk_widget_get_screen(&GtkWidget) &GdkScreen
fn C.gtk_widget_has_screen(&GtkWidget) bool
fn C.gtk_widget_get_size_request(&GtkWidget, &int, &int)
fn C.gtk_widget_set_child_visible(&GtkWidget, bool)
fn C.gtk_widget_set_size_request(&GtkWidget, int, int)
fn C.gtk_widget_thaw_child_notify(&GtkWidget)
fn C.gtk_widget_set_no_show_all(&GtkWidget, bool)
fn C.gtk_widget_get_no_show_all(&GtkWidget) bool
// fn C.gtk_widget_list_mnemonic_labels(&GtkWidget) &GList
fn C.gtk_widget_add_mnemonic_label(&GtkWidget, &GtkWidget)
fn C.gtk_widget_remove_mnemonic_label(&GtkWidget, &GtkWidget)
fn C.gtk_widget_is_composited(&GtkWidget) bool
fn C.gtk_widget_error_bell(&GtkWidget)
fn C.gtk_widget_keynav_failed(&GtkWidget, int) bool
fn C.gtk_widget_get_tooltip_markup(&GtkWidget) charptr
fn C.gtk_widget_set_tooltip_markup(&GtkWidget, charptr)
fn C.gtk_widget_get_tooltip_text(&GtkWidget) charptr
fn C.gtk_widget_set_tooltip_text(&GtkWidget, charptr)
fn C.gtk_widget_get_tooltip_window(&GtkWidget) &GtkWidget
fn C.gtk_widget_set_tooltip_window(&GtkWidget, &GtkWidget)
fn C.gtk_widget_get_has_tooltip(&GtkWidget) bool
fn C.gtk_widget_set_has_tooltip(&GtkWidget, bool)
fn C.gtk_widget_trigger_tooltip_query(&GtkWidget)
fn C.gtk_widget_get_window(&GtkWidget) &GdkWindow
fn C.gtk_widget_register_window(&GtkWidget, &GdkWindow)
fn C.gtk_widget_unregister_window(&GtkWidget, &GdkWindow)
// fn C.gtk_cairo_should_draw_window(&cairo_t, &GdkWindow) bool
// fn C.gtk_cairo_transform_to_window(&cairo_t, &GtkWidget, &GdkWindow)
fn C.gtk_widget_get_allocated_width(&GtkWidget) int
fn C.gtk_widget_get_allocated_height(&GtkWidget) int
fn C.gtk_widget_get_allocation(&GtkWidget, &GtkAllocation)
fn C.gtk_widget_set_allocation(&GtkWidget, &GtkAllocation)
fn C.gtk_widget_get_allocated_baseline(&GtkWidget) int
fn C.gtk_widget_get_allocated_size(&GtkWidget, &GtkAllocation, &int)
fn C.gtk_widget_get_clip(&GtkWidget, &GtkAllocation)
fn C.gtk_widget_set_clip(&GtkWidget, &GtkAllocation)
fn C.gtk_widget_get_app_paintable(&GtkWidget) bool
fn C.gtk_widget_get_can_default(&GtkWidget) bool
fn C.gtk_widget_set_can_default(&GtkWidget, bool)
fn C.gtk_widget_get_can_focus(&GtkWidget) bool
fn C.gtk_widget_set_can_focus(&GtkWidget, bool)
fn C.gtk_widget_get_focus_on_click(&GtkWidget) bool
fn C.gtk_widget_set_focus_on_click(&GtkWidget, bool)
fn C.gtk_widget_get_double_buffered(&GtkWidget) bool
fn C.gtk_widget_get_has_window(&GtkWidget) bool
fn C.gtk_widget_set_has_window(&GtkWidget, bool)
fn C.gtk_widget_get_sensitive(&GtkWidget) bool
fn C.gtk_widget_is_sensitive(&GtkWidget) bool
fn C.gtk_widget_get_state(&GtkWidget) int
fn C.gtk_widget_get_visible(&GtkWidget) bool
fn C.gtk_widget_is_visible(&GtkWidget) bool
fn C.gtk_widget_set_visible(&GtkWidget, bool)
fn C.gtk_widget_set_state_flags(&GtkWidget, int, bool)
fn C.gtk_widget_unset_state_flags(&GtkWidget, int)
fn C.gtk_widget_get_state_flags(&GtkWidget) int
fn C.gtk_widget_has_default(&GtkWidget) bool
fn C.gtk_widget_has_focus(&GtkWidget) bool
fn C.gtk_widget_has_visible_focus(&GtkWidget) bool
fn C.gtk_widget_has_grab(&GtkWidget) bool
fn C.gtk_widget_has_rc_style(&GtkWidget) bool
fn C.gtk_widget_is_drawable(&GtkWidget) bool
fn C.gtk_widget_is_toplevel(&GtkWidget) bool
fn C.gtk_widget_set_window(&GtkWidget, &GdkWindow)
fn C.gtk_widget_set_receives_default(&GtkWidget, bool)
fn C.gtk_widget_get_receives_default(&GtkWidget) bool
fn C.gtk_widget_set_support_multidevice(&GtkWidget, bool)
fn C.gtk_widget_get_support_multidevice(&GtkWidget) bool
fn C.gtk_widget_set_realized(&GtkWidget, bool)
fn C.gtk_widget_get_realized(&GtkWidget) bool
fn C.gtk_widget_set_mapped(&GtkWidget, bool)
fn C.gtk_widget_get_mapped(&GtkWidget) bool
// fn C.gtk_widget_get_requisition(&GtkWidget, &GtkRequisition)
fn C.gtk_widget_device_is_shadowed(&GtkWidget, &GdkDevice) bool
fn C.gtk_widget_get_modifier_mask(&GtkWidget, int /* GdkModifierIntent */) int /* GdkModifierType */
fn C.gtk_widget_insert_action_group(&GtkWidget, charptr, &GActionGroup)
fn C.gtk_widget_get_opacity(&GtkWidget) f64
fn C.gtk_widget_set_opacity(&GtkWidget, f64)
fn C.gtk_widget_list_action_prefixes(&GtkWidget) &charptr
fn C.gtk_widget_get_action_group(&GtkWidget, charptr) &GActionGroup
fn C.gtk_widget_get_path(&GtkWidget) &GtkWidgetPath
fn C.gtk_widget_get_style_context(&GtkWidget) &GtkStyleContext
fn C.gtk_widget_reset_style(&GtkWidget)
// fn C.gtk_widget_class_get_css_name(&WidgetClass)
// fn C.gtk_widget_class_set_css_name(&WidgetClass, charptr)
// fn C.gtk_requisition_new() &GtkRequisition
// fn C.gtk_requisition_copy(&GtkRequisition) &GtkRequisition
// fn C.gtk_requisition_free(&GtkRequisition)
fn C.gtk_widget_get_preferred_height(&GtkWidget, &int, &int)
fn C.gtk_widget_get_preferred_width(&GtkWidget, &int, &int)
fn C.gtk_widget_get_preferred_height_for_width(&GtkWidget, int, &int, &int)
fn C.gtk_widget_get_preferred_width_for_height(&GtkWidget, int, &int, &int)
fn C.gtk_widget_get_preferred_height_and_baseline_for_width(&GtkWidget, int, &int, &int, &int, &int)
fn C.gtk_widget_get_request_mode(&GtkWidget) int
fn C.gtk_widget_get_preferred_size(&GtkWidget, &GtkRequisition, &GtkRequisition)
fn C.gtk_distribute_natural_allocation(int, u32, &GtkRequestedSize) int
fn C.gtk_widget_get_halign(&GtkWidget) int
fn C.gtk_widget_set_halign(&GtkWidget, int)
fn C.gtk_widget_get_valign(&GtkWidget) int
fn C.gtk_widget_get_valign_with_baseline(&GtkWidget) int
fn C.gtk_widget_set_valign(&GtkWidget, int)
fn C.gtk_widget_get_margin_left(&GtkWidget) int
fn C.gtk_widget_set_margin_left(&GtkWidget, int)
fn C.gtk_widget_get_margin_right(&GtkWidget) int
fn C.gtk_widget_set_margin_right(&GtkWidget, int)
fn C.gtk_widget_get_margin_start(&GtkWidget) int
fn C.gtk_widget_set_margin_start(&GtkWidget, int)
fn C.gtk_widget_get_margin_end(&GtkWidget) int
fn C.gtk_widget_set_margin_end(&GtkWidget, int)
fn C.gtk_widget_get_margin_top(&GtkWidget) int
fn C.gtk_widget_set_margin_top(&GtkWidget, int)
fn C.gtk_widget_get_margin_bottom(&GtkWidget) int
fn C.gtk_widget_set_margin_bottom(&GtkWidget, int)
fn C.gtk_widget_get_hexpand(&GtkWidget) bool
fn C.gtk_widget_set_hexpand(&GtkWidget, bool)
fn C.gtk_widget_get_hexpand_set(&GtkWidget) bool
fn C.gtk_widget_set_hexpand_set(&GtkWidget, bool)
fn C.gtk_widget_get_vexpand(&GtkWidget) bool
fn C.gtk_widget_set_vexpand(&GtkWidget, bool)
fn C.gtk_widget_get_vexpand_set(&GtkWidget) bool
fn C.gtk_widget_set_vexpand_set(&GtkWidget, bool)
fn C.gtk_widget_queue_compute_expand(&GtkWidget)
fn C.gtk_widget_compute_expand(&GtkWidget, int) bool
fn C.gtk_widget_init_template(&GtkWidget)
// fn C.gtk_widget_class_set_template(&WidgetClass, &GBytes)
// fn C.gtk_widget_class_set_template_from_resource(&WidgetClass, charptr)
// fn C.gtk_widget_get_template_child(&GtkWidget, GType, charptr) &GObject
// fn C.gtk_widget_class_bind_template_child_full(&WidgetClass, charptr, bool, gssize)
// fn C.gtk_widget_class_bind_template_callback_full(&WidgetClass, charptr, GCallback)
// fn C.gtk_widget_class_set_connect_func(&WidgetClass, GtkBuilderConnectFunc, gpointer, GDestroyNotify)
// fn C.gtk_widget_class_bind_template_childwidget_class(TypeName) #define
// fn C.gtk_widget_class_bind_template_child_internalwidget_class(TypeName) #define
// fn C.gtk_widget_class_bind_template_child_privatewidget_class(TypeName) #define
// fn C.gtk_widget_class_bind_template_child_internal_privatewidget_class(TypeName) #define
// fn C.gtk_widget_class_bind_template_callbackwidget_class() #define

fn C.gtk_builder_new() &GtkBuilder
fn C.gtk_builder_new_from_file(&charptr) &GtkBuilder
fn C.gtk_builder_new_from_resource(&charptr) &GtkBuilder
fn C.gtk_builder_new_from_string(&charptr, int) &GtkBuilder
fn C.gtk_builder_add_callback_symbol(&GtkBuilder, &charptr, voidptr /* GCallback */)
// fn C.gtk_builder_add_callback_symbols(&GtkBuilder, &charptr, GCallback)
// fn C.gtk_builder_lookup_callback_symbol(&GtkBuilder, &charptr) GCallback
fn C.gtk_builder_add_from_file(&GtkBuilder, &charptr, &GError) u32
fn C.gtk_builder_add_from_resource(&GtkBuilder, &charptr, &GError) u32
fn C.gtk_builder_add_from_string(&GtkBuilder, &charptr, int, &GError) u32
fn C.gtk_builder_add_objects_from_file(&GtkBuilder, &charptr, &charptr, &GError) u32
fn C.gtk_builder_add_objects_from_string(&GtkBuilder, &charptr, int, &charptr, &GError) u32
fn C.gtk_builder_add_objects_from_resource(&GtkBuilder, &charptr, &charptr, &GError) u32
fn C.gtk_builder_extend_with_template(&GtkBuilder, &GtkWidget, GType, &charptr, int, &GError) u32
fn C.gtk_builder_get_object(&GtkBuilder, &charptr) &GObject
fn C.gtk_builder_get_objects(&GtkBuilder) &GSList
fn C.gtk_builder_expose_object(&GtkBuilder, &charptr, &GObject)
fn C.gtk_builder_connect_signals(&GtkBuilder, voidptr)
// fn C.gtk_builder_connect_signals_full(&GtkBuilder, GtkBuilderConnectFunc, voidptr)
fn C.gtk_builder_set_translation_domain(&GtkBuilder, &charptr)
fn C.gtk_builder_get_translation_domain(&GtkBuilder) charptr
fn C.gtk_builder_set_application(&GtkBuilder, &GtkApplication)
fn C.gtk_builder_get_application(&GtkBuilder) &GtkApplication
fn C.gtk_builder_get_type_from_name(&GtkBuilder, &char) GType
fn C.gtk_builder_value_from_string(&GtkBuilder, &GParamSpec, &charptr, &GValue, &GError) bool
fn C.gtk_builder_value_from_string_type(&GtkBuilder, GType, &charptr, &GValue, &GError) bool

/* Buildable */
fn C.gtk_buildable_set_name(&GtkBuildable, &charptr)
fn C.gtk_buildable_get_name(&GtkBuildable) charptr
fn C.gtk_buildable_add_child(&GtkBuildable, &GtkBuilder, &GObject, &charptr)
fn C.gtk_buildable_set_buildable_property(&GtkBuildable, &GtkBuilder, &charptr, &GValue)
fn C.gtk_buildable_construct_child(&GtkBuildable, &GtkBuilder, &charptr) &GObject
fn C.gtk_buildable_custom_tag_start(&GtkBuildable, &GtkBuilder, &GObject, &charptr, &GMarkupParser, &voidptr) bool
fn C.gtk_buildable_custom_tag_end(&GtkBuildable, &GtkBuilder, &GObject, &charptr, &voidptr)
fn C.gtk_buildable_custom_finished(&GtkBuildable, &GtkBuilder, &GObject, &charptr, voidptr)
fn C.gtk_buildable_parser_finished(&GtkBuildable, &GtkBuilder)
fn C.gtk_buildable_get_internal_child(&GtkBuildable, &GtkBuilder, &charptr) &GObject

/* AboutDialog */
fn C.gtk_about_dialog_new() &GtkWidget
fn C.gtk_about_dialog_get_program_name(&GtkAboutDialog) charptr
fn C.gtk_about_dialog_set_program_name(&GtkAboutDialog, charptr)
fn C.gtk_about_dialog_get_version(&GtkAboutDialog) charptr
fn C.gtk_about_dialog_set_version(&GtkAboutDialog, charptr)
fn C.gtk_about_dialog_get_copyright(&GtkAboutDialog) charptr
fn C.gtk_about_dialog_set_copyright(&GtkAboutDialog, charptr)
fn C.gtk_about_dialog_get_comments(&GtkAboutDialog) charptr
fn C.gtk_about_dialog_set_comments(&GtkAboutDialog, charptr)
fn C.gtk_about_dialog_get_license(&GtkAboutDialog) charptr
fn C.gtk_about_dialog_set_license(&GtkAboutDialog, charptr)
fn C.gtk_about_dialog_get_wrap_license(&GtkAboutDialog) bool
fn C.gtk_about_dialog_set_wrap_license(&GtkAboutDialog, bool)
fn C.gtk_about_dialog_get_license_type(&GtkAboutDialog) GtkLicense
fn C.gtk_about_dialog_set_license_type(&GtkAboutDialog, GtkLicense)
fn C.gtk_about_dialog_get_website(&GtkAboutDialog) charptr
fn C.gtk_about_dialog_set_website(&GtkAboutDialog, charptr)
fn C.gtk_about_dialog_get_website_label(&GtkAboutDialog) charptr
fn C.gtk_about_dialog_set_website_label(&GtkAboutDialog, charptr)
fn C.gtk_about_dialog_get_authors(&GtkAboutDialog) &charptr
fn C.gtk_about_dialog_set_authors(&GtkAboutDialog, &charptr)
fn C.gtk_about_dialog_get_artists(&GtkAboutDialog) &charptr
fn C.gtk_about_dialog_set_artists(&GtkAboutDialog, &charptr)
fn C.gtk_about_dialog_get_documenters(&GtkAboutDialog) &charptr
fn C.gtk_about_dialog_set_documenters(&GtkAboutDialog, &charptr)
fn C.gtk_about_dialog_get_translator_credits(&GtkAboutDialog) charptr
fn C.gtk_about_dialog_set_translator_credits(&GtkAboutDialog, charptr)
fn C.gtk_about_dialog_get_logo(&GtkAboutDialog) &GdkPixbuf
fn C.gtk_about_dialog_set_logo(&GtkAboutDialog, &GdkPixbuf)
fn C.gtk_about_dialog_get_logo_icon_name(&GtkAboutDialog) charptr
fn C.gtk_about_dialog_set_logo_icon_name(&GtkAboutDialog, charptr)
fn C.gtk_about_dialog_add_credit_section(&GtkAboutDialog, charptr, &charptr)
fn C.gtk_show_about_dialog(&GtkWidget, charptr)

/* GOBJECT */
fn C.g_object_unref(voidptr)

/* ORIENTABLE */
fn C.gtk_orientable_get_orientation(&GtkWidget) GtkOrientation
fn C.gtk_orientable_set_orientation(&GtkWidget, GtkOrientation)

/* Requisition */
fn C.gtk_requisition_new() &GtkRequisition
fn C.gtk_requisition_copy(&GtkRequisition) &GtkRequisition
fn C.gtk_requisition_free(&GtkRequisition)

/* Actionable */
fn C.gtk_actionable_get_action_name(&GtkWidget) charptr
fn C.gtk_actionable_set_action_name(&GtkWidget, &charptr)
fn C.gtk_actionable_get_action_target_value(&GtkWidget) &GVariant
fn C.gtk_actionable_set_action_target_value(&GtkWidget, &GVariant)
fn C.gtk_actionable_set_action_target(&GtkWidget, &charptr)
fn C.gtk_actionable_set_detailed_action_name(&GtkWidget, &charptr)

/* MessageDialog */
fn C.gtk_message_dialog_new(&GtkWindow, GtkDialogFlags, GtkMessageType, GtkButtonsType, charptr) &GtkWidget
fn C.gtk_message_dialog_new_with_markup(&GtkWindow, GtkDialogFlags, GtkMessageType, GtkButtonsType, charptr) &GtkWidget
fn C.gtk_message_dialog_set_markup(&GtkWidget, charptr)
fn C.gtk_message_dialog_set_image(&GtkWidget, &GtkWidget)
fn C.gtk_message_dialog_get_image(&GtkWidget) &GtkWidget
fn C.gtk_message_dialog_format_secondary_text(&GtkWidget, charptr)
fn C.gtk_message_dialog_format_secondary_markup(&GtkWidget, charptr)
fn C.gtk_message_dialog_get_message_area(&GtkWidget) &GtkWidget

/* ToggleButton */
fn C.gtk_toggle_button_new() &GtkWidget
fn C.gtk_toggle_button_new_with_label(&charptr) &GtkWidget
fn C.gtk_toggle_button_new_with_mnemonic(&charptr) &GtkWidget
fn C.gtk_toggle_button_set_mode(&GtkWidget, bool)
fn C.gtk_toggle_button_get_mode(&GtkWidget) bool
fn C.gtk_toggle_button_toggled(&GtkWidget)
fn C.gtk_toggle_button_get_active(&GtkWidget) bool
fn C.gtk_toggle_button_set_active(&GtkWidget, bool)
fn C.gtk_toggle_button_get_inconsistent(&GtkWidget) bool
fn C.gtk_toggle_button_set_inconsistent(&GtkWidget, bool)

/* CheckButton */
fn C.gtk_check_button_new() &GtkWidget
fn C.gtk_check_button_new_with_label(&charptr) &GtkWidget
fn C.gtk_check_button_new_with_mnemonic(&charptr) &GtkWidget

fn C._() charptr

// OTHERS
fn C.g_intern_static_string(charptr) charptr
fn C.g_signal_connect(&GtkWidget, charptr, voidptr, voidptr) u32
fn C.g_strfreev(&charptr)
