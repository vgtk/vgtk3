module gtk

struct C.GtkLabel {
}

struct C.GtkApplication {
}

struct C.GtkApplicationWindow {
}

struct C.GtkApplicationWindowClass {
}

struct C.GtkWindow {
}

struct C.GtkGrid {
}

struct C.GtkContainer {
}

struct C.GtkWidget {
}

// struct C._GtkWidget
struct C.GtkBox {
}

struct C._GtkBox {
}

struct C.GtkWidgetPath {
}

struct C.GtkAdjustment {
}

struct C.GtkContainerClass {
}

struct C.GtkAllocation {
}

struct C.GtkStyleContext {
}

struct C.GtkRequisition {
}

struct C.GtkRequestedSize {
}

struct C.GtkBuilder {
}

struct C.GtkBuildable {
}

struct C.GtkShortcutsWindow {
}

struct C.GtkActionable {
}

struct C.GtkMessageType {
}

struct C.GtkDialogFlags {
}

struct C.GtkButtonsType {
}

struct C.GtkAccelMap {
}

struct C.GtkAccelKey {
}

struct C.GtkAboutDialog {
}

struct C.GtkBin {
}

struct C.GtkColorChooser {
}

struct C.GtkToggleButton {
}

struct C._GtkBox {
}

struct GtkTextIter {
	data [128]int
}

// MAIN
fn C.gtk_init(int, voidptr)

fn C.gtk_main()

fn C.gtk_main_quit()

// Bin
fn C.gtk_bin_get_child(&C.GtkBin) &C.GtkWidget

// ColorChooser
fn C.gtk_color_chooser_get_rgba(&C.GtkColorChooser, &C.GdkRGBA)

fn C.gtk_color_chooser_set_rgba(&C.GtkColorChooser, &C.GdkRGBA)

fn C.gtk_color_chooser_get_use_alpha(&C.GtkColorChooser) bool

fn C.gtk_color_chooser_set_use_alpha(&C.GtkColorChooser, bool)

fn C.gtk_color_chooser_add_palette(&C.GtkColorChooser, int, int, int, &C.GdkRGBA)

// WINDOW
fn C.gtk_window_new(int) &C.GtkWidget

fn C.gtk_window_set_title(&C.GtkWidget, charptr)

fn C.gtk_window_set_wmclass(&C.GtkWidget, charptr, charptr)

// !DEPRECATED
fn C.gtk_window_set_resizable(&C.GtkWidget, bool)

fn C.gtk_window_get_resizable(&C.GtkWidget) bool

// fn C.gtk_window_add_accel_group(&C.GtkWidget, &C.GtkAccelGroup)
// fn C.gtk_window_remove_accel_group(&C.GtkWidget, &C.GtkAccelGroup)
fn C.gtk_window_activate_focus(&C.GtkWidget) bool

fn C.gtk_window_activate_default(&C.GtkWidget) bool

fn C.gtk_window_set_modal(&C.GtkWidget, bool)

fn C.gtk_window_set_default_size(&C.GtkWidget, int, int)

fn C.gtk_window_set_default_geometry(&C.GtkWidget, int, int)

// !DEPRECATED
// fn C.gtk_window_set_geometry_hints(&C.GtkWidget, &C.GtkWidget, &GdkGeometry, GdkWindowHints)
fn C.gtk_window_set_gravity(&C.GtkWidget, int)

fn C.gtk_window_get_gravity(&C.GtkWidget) int

fn C.gtk_window_set_position(&C.GtkWidget, int)

fn C.gtk_window_set_transient_for(&C.GtkWidget, &C.GtkWidget)

fn C.gtk_window_set_attached_to(&C.GtkWidget, &C.GtkWidget)

fn C.gtk_window_set_destroy_with_parent(&C.GtkWidget, bool)

fn C.gtk_window_set_hide_titlebar_when_maximized(&C.GtkWidget, bool)

// fn C.gtk_window_set_screen(&C.GtkWidget, &GdkScreen)
// fn C.gtk_window_get_screen(&C.GtkWidget) &GdkScreen
fn C.gtk_window_is_active(&C.GtkWidget) bool

fn C.gtk_window_is_maximized(&C.GtkWidget) bool

fn C.gtk_window_has_toplevel_focus(&C.GtkWidget) bool

// fn C.gtk_window_list_toplevels() &GList
fn C.gtk_window_add_mnemonic(&C.GtkWidget, u32, &C.GtkWidget)

fn C.gtk_window_remove_mnemonic(&C.GtkWidget, u32, &C.GtkWidget)

// fn C.gtk_window_mnemonic_activate(&C.GtkWidget, u32, GdkModifierType) bool
// fn C.gtk_window_activate_key(&C.GtkWidget, &GdkEventKey) bool
// fn C.gtk_window_propagate_key_event(&C.GtkWidget, &GdkEventKey) bool
fn C.gtk_window_get_focus(&C.GtkWidget) &C.GtkWidget

fn C.gtk_window_set_focus(&C.GtkWidget, &C.GtkWidget)

fn C.gtk_window_get_default_widget(&C.GtkWidget) &C.GtkWidget

fn C.gtk_window_set_default(&C.GtkWidget, &C.GtkWidget)

fn C.gtk_window_present(&C.GtkWidget)

fn C.gtk_window_present_with_time(&C.GtkWidget, u32)

fn C.gtk_window_close(&C.GtkWidget)

fn C.gtk_window_iconify(&C.GtkWidget)

fn C.gtk_window_deiconify(&C.GtkWidget)

fn C.gtk_window_stick(&C.GtkWidget)

fn C.gtk_window_unstick(&C.GtkWidget)

fn C.gtk_window_maximize(&C.GtkWidget)

fn C.gtk_window_unmaximize(&C.GtkWidget)

fn C.gtk_window_fullscreen(&C.GtkWidget)

// fn C.gtk_window_fullscreen_on_monitor(&C.GtkWidget, &GdkScreen, int)
fn C.gtk_window_unfullscreen(&C.GtkWidget)

fn C.gtk_window_set_keep_above(&C.GtkWidget, bool)

fn C.gtk_window_set_keep_below(&C.GtkWidget, bool)

// fn C.gtk_window_begin_resize_drag(&C.GtkWidget, GdkWindowEdge, int, int, int, u32)
fn C.gtk_window_begin_move_drag(&C.GtkWidget, int, int, int, u32)

fn C.gtk_window_set_decorated(&C.GtkWidget, bool)

fn C.gtk_window_set_deletable(&C.GtkWidget, bool)

// fn C.gtk_window_set_mnemonic_modifier(&C.GtkWidget, GdkModifierType)
// fn C.gtk_window_set_type_hint(&C.GtkWidget, GdkWindowTypeHint)
fn C.gtk_window_set_skip_taskbar_hint(&C.GtkWidget, bool)

fn C.gtk_window_set_skip_pager_hint(&C.GtkWidget, bool)

fn C.gtk_window_set_urgency_hint(&C.GtkWidget, bool)

fn C.gtk_window_set_accept_focus(&C.GtkWidget, bool)

fn C.gtk_window_set_focus_on_map(&C.GtkWidget, bool)

fn C.gtk_window_set_startup_id(&C.GtkWidget, charptr)

fn C.gtk_window_set_role(&C.GtkWidget, charptr)

fn C.gtk_window_get_decorated(&C.GtkWidget) bool

fn C.gtk_window_get_deletable(&C.GtkWidget) bool

// fn C.gtk_window_get_default_icon_list() &GList
fn C.gtk_window_get_default_icon_name()

fn C.gtk_window_get_default_size(&C.GtkWidget, &int, &int)

fn C.gtk_window_get_destroy_with_parent(&C.GtkWidget) bool

fn C.gtk_window_get_hide_titlebar_when_maximized(&C.GtkWidget) bool

// fn C.gtk_window_get_icon(&C.GtkWidget) &GdkPixbuf
// fn C.gtk_window_get_icon_list(&C.GtkWidget) &GList
fn C.gtk_window_get_icon_name(&C.GtkWidget)

// fn C.gtk_window_get_mnemonic_modifier(&C.GtkWidget) GdkModifierType
fn C.gtk_window_get_modal(&C.GtkWidget) bool

fn C.gtk_window_get_position(&C.GtkWidget, &int, &int)

fn C.gtk_window_get_role(&C.GtkWidget)

fn C.gtk_window_get_size(&C.GtkWidget, &int, &int)

fn C.gtk_window_get_title(&C.GtkWidget) charptr

fn C.gtk_window_get_transient_for(&C.GtkWidget) &C.GtkWidget

fn C.gtk_window_get_attached_to(&C.GtkWidget) &C.GtkWidget

// fn C.gtk_window_get_type_hint(&C.GtkWidget) GdkWindowTypeHint
fn C.gtk_window_get_skip_taskbar_hint(&C.GtkWidget) bool

fn C.gtk_window_get_skip_pager_hint(&C.GtkWidget) bool

fn C.gtk_window_get_urgency_hint(&C.GtkWidget) bool

fn C.gtk_window_get_accept_focus(&C.GtkWidget) bool

fn C.gtk_window_get_focus_on_map(&C.GtkWidget) bool

// fn C.gtk_window_get_group(&C.GtkWidget) &WidgetGroup
fn C.gtk_window_has_group(&C.GtkWidget) bool

fn C.gtk_window_get_window_type(&C.GtkWidget) int

fn C.gtk_window_move(&C.GtkWidget, int, int)

fn C.gtk_window_parse_geometry(&C.GtkWidget, charptr) bool

fn C.gtk_window_reshow_with_initial_size(&C.GtkWidget)

fn C.gtk_window_resize(&C.GtkWidget, int, int)

fn C.gtk_window_resize_to_geometry(&C.GtkWidget, int, int)

// fn C.gtk_window_set_default_icon_list(&GList)
// fn C.gtk_window_set_default_icon(&GdkPixbuf)
fn C.gtk_window_set_default_icon_from_file(charptr, &GError) bool

fn C.gtk_window_set_default_icon_name(charptr)

// fn C.gtk_window_set_icon(&C.GtkWidget, &GdkPixbuf)
// fn C.gtk_window_set_icon_list(&C.GtkWidget, &GList)
fn C.gtk_window_set_icon_from_file(&C.GtkWidget, charptr, &GError) bool

fn C.gtk_window_set_icon_name(&C.GtkWidget, charptr)

fn C.gtk_window_set_auto_startup_notification(bool)

fn C.gtk_window_get_opacity(&C.GtkWidget) f64

fn C.gtk_window_set_opacity(&C.GtkWidget, f64)

fn C.gtk_window_get_mnemonics_visible(&C.GtkWidget) bool

fn C.gtk_window_set_mnemonics_visible(&C.GtkWidget, bool)

fn C.gtk_window_get_focus_visible(&C.GtkWidget) bool

fn C.gtk_window_set_focus_visible(&C.GtkWidget, bool)

fn C.gtk_window_set_has_resize_grip(&C.GtkWidget, bool)

fn C.gtk_window_get_has_resize_grip(&C.GtkWidget) bool

fn C.gtk_window_resize_grip_is_visible(&C.GtkWidget) bool

// fn C.gtk_window_get_resize_grip_area(&C.GtkWidget, &GdkRectangle) bool
fn C.gtk_window_get_application(&C.GtkWidget) &C.GtkApplication

fn C.gtk_window_set_application(&C.GtkWidget, &C.GtkApplication)

fn C.gtk_window_set_has_user_ref_count(&C.GtkWidget, bool)

fn C.gtk_window_set_titlebar(&C.GtkWidget, &C.GtkWidget)

fn C.gtk_window_get_titlebar(&C.GtkWidget) &C.GtkWidget

fn C.gtk_window_set_interactive_debugging(bool)

// DIALOG
fn C.gtk_dialog_new() &C.GtkWidget

fn C.gtk_dialog_new_with_buttons(x &charptr, y &C.GtkWindow, z int, a C.GtkDialogFlags, b charptr, c int) &C.GtkWidget

fn C.gtk_dialog_run(&C.GtkWidget) int

fn C.gtk_dialog_response(&C.GtkWidget, int)

fn C.gtk_dialog_add_button(&C.GtkWidget, &charptr, int) &C.GtkWidget

fn C.gtk_dialog_add_buttons(&C.GtkWidget, &charptr)

fn C.gtk_dialog_add_action_widget(&C.GtkWidget, &C.GtkWidget, int)

fn C.gtk_dialog_set_default_response(&C.GtkWidget, int)

fn C.gtk_dialog_set_response_sensitive(&C.GtkWidget, int, bool)

fn C.gtk_dialog_get_response_for_widget(&C.GtkWidget, &C.GtkWidget) int

fn C.gtk_dialog_get_widget_for_response(&C.GtkWidget, int) &C.GtkWidget

fn C.gtk_dialog_get_action_area(&C.GtkWidget) &C.GtkWidget

fn C.gtk_dialog_get_content_area(&C.GtkWidget) &C.GtkWidget

fn C.gtk_dialog_get_header_bar(&C.GtkWidget) &C.GtkWidget

fn C.gtk_dialog_set_alternative_button_order(&C.GtkWidget, int)

fn C.gtk_dialog_set_alternative_button_order_from_array(&C.GtkWidget, int, &int)

pub enum ButtonBoxStyle {
	spread = C.GTK_BUTTONBOX_SPREAD
	edge = C.GTK_BUTTONBOX_EDGE
	start = C.GTK_BUTTONBOX_START
	end = C.GTK_BUTTONBOX_END
	center = C.GTK_BUTTONBOX_CENTER
	expand = C.GTK_BUTTONBOX_EXPAND
}

// TEXTVIEW
fn C.gtk_text_tag_table_new() &C.GtkWidget

fn C.gtk_text_buffer_new(tt &C.GtkWidget) &C.GtkWidget

fn C.gtk_text_buffer_set_text(t &C.GtkWidget, b byteptr, len int)

fn C.gtk_text_buffer_get_text(t &C.GtkWidget, start &GtkTextIter, end &GtkTextIter) byteptr

fn C.gtk_text_buffer_get_bounds(b &C.GtkWidget, start &GtkTextIter, end &GtkTextIter)

fn C.gtk_text_buffer_get_start_iter(b &C.GtkWidget, start &GtkTextIter)

fn C.gtk_text_buffer_get_end_iter(b &C.GtkWidget, end &GtkTextIter)

fn C.gtk_text_view_new() &C.GtkWidget

fn C.gtk_text_view_set_editable(t &C.GtkWidget, e bool)

fn C.gtk_scrolled_window_new(t &C.GtkWidget, o &C.GtkWidget) &C.GtkWidget

fn C.gtk_text_view_set_buffer(t &C.GtkWidget, w &C.GtkWidget)

fn C.gtk_text_view_get_buffer(t &C.GtkWidget) &C.GtkWidget

// PANED
fn C.gtk_paned_new(o Orientation) &C.GtkWidget

fn C.gtk_paned_add1(p &C.GtkWidget, wgt Widgeter)

fn C.gtk_paned_add2(p &C.GtkWidget, wgt Widgeter)

fn C.gtk_paned_set_wide_handle(p &C.GtkWidget, wide bool)

fn C.gtk_paned_set_position(p &C.GtkWidget, pos int)

// BUTTONBOX
fn C.gtk_vbutton_box_new() &C.GtkWidget

fn C.gtk_hbutton_box_new() &C.GtkWidget

fn C.gtk_button_box_set_layout(w &C.GtkWidget, layout ButtonBoxStyle)

fn C.gtk_button_box_set_child_secondary(w &C.GtkWidget, child &C.GtkWidget, is_secondary bool)

fn C.gtk_button_box_set_child_non_homogeneous(w &C.GtkWidget, child &C.GtkWidget, non_homogeneous bool)

// BUTTON
fn C.gtk_button_new() &C.GtkWidget

fn C.gtk_button_new_with_label(charptr) &C.GtkWidget

fn C.gtk_button_new_with_mnemonic(charptr) &C.GtkWidget

fn C.gtk_button_new_from_icon_name(charptr, int) &C.GtkWidget

fn C.gtk_button_new_from_stock(charptr) &C.GtkWidget

fn C.gtk_button_pressed(&C.GtkWidget)

fn C.gtk_button_released(&C.GtkWidget)

fn C.gtk_button_clicked(&C.GtkWidget)

fn C.gtk_button_enter(&C.GtkWidget)

fn C.gtk_button_leave(&C.GtkWidget)

fn C.gtk_button_set_relief(&C.GtkWidget, int)

fn C.gtk_button_get_relief(&C.GtkWidget) int

fn C.gtk_button_get_label(&C.GtkWidget) charptr

fn C.gtk_button_set_label(&C.GtkWidget, charptr)

fn C.gtk_button_get_use_stock(&C.GtkWidget) bool

fn C.gtk_button_set_use_stock(&C.GtkWidget, bool)

fn C.gtk_button_get_use_underline(&C.GtkWidget) bool

fn C.gtk_button_set_use_underline(&C.GtkWidget, bool)

fn C.gtk_button_set_focus_on_click(&C.GtkWidget, bool)

fn C.gtk_button_get_focus_on_click(&C.GtkWidget) bool

fn C.gtk_button_set_alignment(&C.GtkWidget, f32, f32)

fn C.gtk_button_get_alignment(&C.GtkWidget, &f32, &f32)

fn C.gtk_button_set_image(&C.GtkWidget, &C.GtkWidget)

fn C.gtk_button_get_image(&C.GtkWidget) &C.GtkWidget

fn C.gtk_button_set_image_position(&C.GtkWidget, int)

fn C.gtk_button_get_image_position(&C.GtkWidget) int

fn C.gtk_button_set_always_show_image(&C.GtkWidget, bool)

fn C.gtk_button_get_always_show_image(&C.GtkWidget) bool

fn C.gtk_button_get_event_window(&C.GtkWidget) &C.GdkWindow

// ENTRY
fn C.gtk_entry_new() &C.GtkWidget

// fn C.gtk_entry_new_with_buffer(&C.GtkEntryBuffer) &C.GtkWidget
// fn C.gtk_entry_get_buffer(&C.GtkWidget) &C.GtkEntryBuffer
// fn C.gtk_entry_set_buffer(&C.GtkWidget, &C.GtkEntryBuffer)
fn C.gtk_entry_set_text(&C.GtkWidget, &charptr)

fn C.gtk_entry_get_text(&C.GtkWidget) charptr

fn C.gtk_entry_get_text_length(&C.GtkWidget) u32

// fn C.gtk_entry_get_text_area(&C.GtkWidget, &GdkRectangle)
fn C.gtk_entry_set_visibility(&C.GtkWidget, bool)

fn C.gtk_entry_set_invisible_char(&C.GtkWidget, byte, x, gunichar)

fn C.gtk_entry_unset_invisible_char(&C.GtkWidget)

fn C.gtk_entry_set_max_length(&C.GtkWidget, int)

fn C.gtk_entry_get_activates_default(&C.GtkWidget) bool

fn C.gtk_entry_get_has_frame(&C.GtkWidget) bool

fn C.gtk_entry_get_inner_border(&C.GtkWidget)

fn C.gtk_entry_get_width_chars(&C.GtkWidget) int

fn C.gtk_entry_get_max_width_chars(&C.GtkWidget) int

fn C.gtk_entry_set_activates_default(&C.GtkWidget, bool)

fn C.gtk_entry_set_has_frame(&C.GtkWidget, bool)

// fn C.gtk_entry_set_inner_border(&C.GtkWidget, &C.GtkBorder)
fn C.gtk_entry_set_width_chars(&C.GtkWidget, int)

fn C.gtk_entry_set_max_width_chars(&C.GtkWidget, int)

fn C.gtk_entry_get_invisible_char(&C.GtkWidget) rune

// gunichar
fn C.gtk_entry_set_alignment(&C.GtkWidget, f32)

fn C.gtk_entry_get_alignment(&C.GtkWidget) f32

fn C.gtk_entry_set_placeholder_text(&C.GtkWidget, &charptr)

fn C.gtk_entry_get_placeholder_text(&C.GtkWidget) charptr

fn C.gtk_entry_set_overwrite_mode(&C.GtkWidget, bool)

fn C.gtk_entry_get_overwrite_mode(&C.GtkWidget) bool

// fn C.gtk_entry_get_layout(&C.GtkWidget) &PangoLayout
fn C.gtk_entry_get_layout_offsets(&C.GtkWidget, &int, &int)

fn C.gtk_entry_layout_index_to_text_index(&C.GtkWidget, int) int

fn C.gtk_entry_text_index_to_layout_index(&C.GtkWidget, int) int

// fn C.gtk_entry_set_attributes(&C.GtkWidget, &PangoAttrList)
// fn C.gtk_entry_get_attributes(&C.GtkWidget) &PangoAttrList
fn C.gtk_entry_get_max_length(&C.GtkWidget) int

fn C.gtk_entry_get_visibility(&C.GtkWidget) bool

// fn C.gtk_entry_set_completion(&C.GtkWidget, &C.GtkEntryCompletion)
// fn C.gtk_entry_get_completion(&C.GtkWidget) &C.GtkEntryCompletion
fn C.gtk_entry_set_cursor_hadjustment(&C.GtkWidget, &C.GtkAdjustment)

fn C.gtk_entry_get_cursor_hadjustment(&C.GtkWidget) &C.GtkAdjustment

fn C.gtk_entry_set_progress_fraction(&C.GtkWidget, f64)

fn C.gtk_entry_get_progress_fraction(&C.GtkWidget) f64

fn C.gtk_entry_set_progress_pulse_step(&C.GtkWidget, f64)

fn C.gtk_entry_get_progress_pulse_step(&C.GtkWidget) f64

fn C.gtk_entry_progress_pulse(&C.GtkWidget)

// fn C.gtk_entry_im_context_filter_keypress(&C.GtkWidget, &GdkEventKey) bool
fn C.gtk_entry_reset_im_context(&C.GtkWidget)

// fn C.gtk_entry_get_tabs(&C.GtkWidget) &PangoTabArray
// fn C.gtk_entry_set_tabs(&C.GtkWidget, &PangoTabArray)
// fn C.gtk_entry_set_icon_from_pixbuf(&C.GtkWidget, C.GtkEntryIconPosition, &GdkPixbuf)
fn C.gtk_entry_set_icon_from_stock(x &C.GtkWidget, y int, z C.GtkEntryIconPosition, a &charptr)

fn C.gtk_entry_set_icon_from_icon_name(&C.GtkWidget, int, C.GtkEntryIconPosition, &charptr)

// fn C.gtk_entry_set_icon_from_gicon(&C.GtkWidget, int /* C.GtkEntryIconPosition */, &GIcon)
fn C.gtk_entry_get_icon_storage_type(&C.GtkWidget, int, C.GtkEntryIconPosition) int

// C.GtkImageType
// fn C.gtk_entry_get_icon_pixbuf(&C.GtkWidget, int /* C.GtkEntryIconPosition */) &GdkPixbuf
fn C.gtk_entry_get_icon_stock(&C.GtkWidget, int, C.GtkEntryIconPosition) charptr

fn C.gtk_entry_get_icon_name(&C.GtkWidget, int, C.GtkEntryIconPosition) charptr

// fn C.gtk_entry_get_icon_gicon(&C.GtkWidget, int /* C.GtkEntryIconPosition */) &GIcon
fn C.gtk_entry_set_icon_activatable(&C.GtkWidget, int, C.GtkEntryIconPosition, bool)

fn C.gtk_entry_get_icon_activatable(&C.GtkWidget, int, C.GtkEntryIconPosition) bool

fn C.gtk_entry_set_icon_sensitive(&C.GtkWidget, int, C.GtkEntryIconPosition, bool)

fn C.gtk_entry_get_icon_sensitive(&C.GtkWidget, int, C.GtkEntryIconPosition) bool

fn C.gtk_entry_get_icon_at_pos(&C.GtkWidget, int, int) int

fn C.gtk_entry_set_icon_tooltip_text(&C.GtkWidget, int, C.GtkEntryIconPosition, &charptr)

fn C.gtk_entry_get_icon_tooltip_text(&C.GtkWidget, int, C.GtkEntryIconPosition) charptr

fn C.gtk_entry_set_icon_tooltip_markup(&C.GtkWidget, int, C.GtkEntryIconPosition, &charptr)

fn C.gtk_entry_get_icon_tooltip_markup(&C.GtkWidget, int, C.GtkEntryIconPosition) charptr

// fn C.gtk_entry_set_icon_drag_source(&C.GtkWidget, int /* C.GtkEntryIconPosition */, &C.GtkTargetList, GdkDragAction)
fn C.gtk_entry_get_current_icon_drag_source(&C.GtkWidget) int

// fn C.gtk_entry_get_icon_area(&C.GtkWidget, int /* C.GtkEntryIconPosition */, &GdkRectangle)
fn C.gtk_entry_set_input_purpose(&C.GtkWidget, int, C.GtkInputPurpose)

fn C.gtk_entry_get_input_purpose(&C.GtkWidget) int

// C.GtkInputPurpose
fn C.gtk_entry_set_input_hints(&C.GtkWidget, int, C.GtkInputHints)

fn C.gtk_entry_get_input_hints(&C.GtkWidget) int

// C.GtkInputHints
fn C.gtk_entry_grab_focus_without_selecting(&C.GtkWidget)

// ACCEL MAP
fn C.gtk_accel_map_add_entry(charptr, u32, C.GdkModifierType)

fn C.gtk_accel_map_lookup_entry(charptr, &C.GtkAccelKey) bool

fn C.gtk_accel_map_change_entry(charptr, u32, C.GdkModifierType, bool) bool

fn C.gtk_accel_map_load(charptr)

fn C.gtk_accel_map_save(charptr)

fn C.gtk_accel_map_foreach(voidptr, voidptr)

fn C.gtk_accel_map_load_fd(int)

fn C.gtk_accel_map_save_fd(int)

fn C.gtk_accel_map_load_scanner(&GScanner)

fn C.gtk_accel_map_add_filter(charptr)

fn C.gtk_accel_map_foreach_unfiltered(voidptr, voidptr)

fn C.gtk_accel_map_get() &C.GtkAccelMap

fn C.gtk_accel_map_lock_path(charptr)

fn C.gtk_accel_map_unlock_path(charptr)

// EDITABLE
fn C.gtk_editable_set_editable(&C.GtkWidget, bool)

// BOX
fn C.gtk_box_new(x int, y int) &C.GtkWidget

fn C.gtk_box_pack_start(&C.GtkWidget, &C.GtkWidget, bool, bool, u32)

fn C.gtk_box_pack_end(&C.GtkWidget, &C.GtkWidget, bool, bool, u32)

fn C.gtk_box_get_homogeneous(&C.GtkWidget) bool

fn C.gtk_box_set_homogeneous(&C.GtkWidget, bool)

fn C.gtk_box_get_spacing(&C.GtkWidget) int

fn C.gtk_box_set_spacing(&C.GtkWidget, int)

fn C.gtk_box_reorder_child(&C.GtkWidget, &C.GtkWidget, int)

fn C.gtk_box_query_child_packing(&C.GtkWidget, &C.GtkWidget, &bool, &bool, &u32, &int, &C.GtkPackType)

fn C.gtk_box_set_child_packing(&C.GtkWidget, &C.GtkWidget, bool, bool, u32, int, C.GtkPackType)

fn C.gtk_box_get_baseline_position(&C.GtkWidget) int

// C.GtkBaselinePosition
fn C.gtk_box_set_baseline_position(&C.GtkWidget, int, C.GtkBaselinePosition)

fn C.gtk_box_get_center_widget(&C.GtkWidget) &C.GtkWidget

fn C.gtk_box_set_center_widget(&C.GtkWidget, &C.GtkWidget)

fn C.gtk_alignment_new(int, int, int, int) &C.GtkWidget

fn C.gtk_hbox_new(bool, int) &C.GtkWidget

fn C.gtk_vbox_new(bool, int) &C.GtkWidget

// MENU
fn C.gtk_menu_new() &C.GtkWidget

// MENU BAR
fn C.gtk_menu_bar_new() &C.GtkWidget

// MENU SHELL
fn C.gtk_menu_shell_append(&C.GtkWidget, &C.GtkWidget)

// MENU ITEM
fn C.gtk_menu_item_new() &C.GtkWidget

fn C.gtk_menu_item_get_accel_path(&C.GtkWidget) charptr

fn C.gtk_menu_item_get_label(&C.GtkWidget) charptr

fn C.gtk_menu_item_get_use_underline(&C.GtkWidget) bool

fn C.gtk_menu_item_new_with_label(charptr) &C.GtkWidget

fn C.gtk_menu_item_set_accel_path(&C.GtkWidget, charptr)

fn C.gtk_menu_item_set_label(&C.GtkWidget, charptr)

fn C.gtk_menu_item_set_submenu(&C.GtkWidget, &C.GtkWidget)

fn C.gtk_menu_item_set_use_underline(&C.GtkWidget, bool)

// MENU SEPARATOR ITEM
fn C.gtk_separator_menu_item_new() &C.GtkWidget

fn C.gtk_separator_menu_item_get_type() C.GType

// LABEL
fn C.gtk_label_new(charptr) &C.GtkWidget

fn C.gtk_label_set_text(&C.GtkWidget, charptr)

// fn C.gtk_label_set_attributes(&C.GtkWidget, &PangoAttrList)
fn C.gtk_label_set_markup(&C.GtkWidget, charptr)

fn C.gtk_label_set_markup_with_mnemonic(&C.GtkWidget, charptr)

fn C.gtk_label_set_pattern(&C.GtkWidget, charptr)

fn C.gtk_label_set_justify(&C.GtkWidget, int)

fn C.gtk_label_set_xalign(&C.GtkWidget, f32)

fn C.gtk_label_set_yalign(&C.GtkWidget, f32)

// fn C.gtk_label_set_ellipsize(&C.GtkWidget, PangoEllipsizeMode)
fn C.gtk_label_set_width_chars(&C.GtkWidget, int)

fn C.gtk_label_set_max_width_chars(&C.GtkWidget, int)

fn C.gtk_label_set_line_wrap(&C.GtkWidget, bool)

// fn C.gtk_label_set_line_wrap_mode(&C.GtkWidget, PangoWrapMode)
fn C.gtk_label_set_lines(&C.GtkWidget, int)

fn C.gtk_label_get_layout_offsets(&C.GtkWidget, &int, &int)

fn C.gtk_label_get_mnemonic_keyval(&C.GtkWidget) u32

fn C.gtk_label_get_selectable(&C.GtkWidget) bool

fn C.gtk_label_get_text(&C.GtkWidget) charptr

fn C.gtk_label_new_with_mnemonic(charptr) &C.GtkWidget

fn C.gtk_label_select_region(&C.GtkWidget, int, int)

fn C.gtk_label_set_mnemonic_widget(&C.GtkWidget, &C.GtkWidget)

fn C.gtk_label_set_selectable(&C.GtkWidget, bool)

fn C.gtk_label_set_text_with_mnemonic(&C.GtkWidget, charptr)

// fn C.gtk_label_get_attributes(&C.GtkWidget) &PangoAttrList
fn C.gtk_label_get_justify(&C.GtkWidget) int

fn C.gtk_label_get_xalign(&C.GtkWidget) f32

fn C.gtk_label_get_yalign(&C.GtkWidget) f32

// fn C.gtk_label_get_ellipsize(&C.GtkWidget) PangoEllipsizeMode
fn C.gtk_label_get_width_chars(&C.GtkWidget) int

fn C.gtk_label_get_max_width_chars(&C.GtkWidget) int

fn C.gtk_label_get_label(&C.GtkWidget) charptr

// fn C.gtk_label_get_layout(&C.GtkWidget) &PangoLayout
fn C.gtk_label_get_line_wrap(&C.GtkWidget) bool

// fn C.gtk_label_get_line_wrap_mode(&C.GtkWidget) PangoWrapMode
fn C.gtk_label_get_lines(&C.GtkWidget) int

fn C.gtk_label_get_mnemonic_widget(&C.GtkWidget) &C.GtkWidget

fn C.gtk_label_get_selection_bounds(&C.GtkWidget, &int, &int) bool

fn C.gtk_label_get_use_markup(&C.GtkWidget) bool

fn C.gtk_label_get_use_underline(&C.GtkWidget) bool

fn C.gtk_label_get_single_line_mode(&C.GtkWidget) bool

fn C.gtk_label_get_angle(&C.GtkWidget) f64

fn C.gtk_label_set_label(&C.GtkWidget, charptr)

fn C.gtk_label_set_use_markup(&C.GtkWidget, bool)

fn C.gtk_label_set_use_underline(&C.GtkWidget, bool)

fn C.gtk_label_set_single_line_mode(&C.GtkWidget, bool)

fn C.gtk_label_set_angle(&C.GtkWidget, f64)

fn C.gtk_label_get_current_uri(&C.GtkWidget) charptr

fn C.gtk_label_set_track_visited_links(&C.GtkWidget, bool)

fn C.gtk_label_get_track_visited_links(&C.GtkWidget) bool

// APPLICATION
fn C.gtk_application_new(charptr, int, C.GApplicationFlags) &C.GtkApplication

fn C.g_application_run(&C.GtkApplication, int, charptr) int

fn C.gtk_application_add_window(&C.GtkApplication, &C.GtkWindow)

fn C.gtk_application_remove_window(&C.GtkApplication, &C.GtkWindow)

fn C.gtk_application_get_windows(&C.GtkApplication) &GList

fn C.gtk_application_get_window_by_id(&C.GtkApplication, u32) &C.GtkWindow

fn C.gtk_application_get_active_window(&C.GtkApplication) &C.GtkWindow

fn C.gtk_application_inhibit(&C.GtkApplication, &C.GtkWindow, int, C.GtkApplicationInhibitFlags, charptr) u32

fn C.gtk_application_uninhibit(&C.GtkApplication, u32)

fn C.gtk_application_is_inhibited(&C.GtkApplication, int, C.GtkApplicationInhibitFlags) bool

fn C.gtk_application_prefers_app_menu(&C.GtkApplication) bool

fn C.gtk_application_get_app_menu(&C.GtkApplication) &C.GMenuModel

fn C.gtk_application_set_app_menu(&C.GtkApplication, &C.GMenuModel)

fn C.gtk_application_get_menubar(&C.GtkApplication) &C.GMenuModel

fn C.gtk_application_set_menubar(&C.GtkApplication, &C.GMenuModel)

fn C.gtk_application_get_menu_by_id(&C.GtkApplication, charptr) &C.GMenu

fn C.gtk_application_add_accelerator(&C.GtkApplication, charptr, &charptr, &C.GVariant)

fn C.gtk_application_remove_accelerator(&C.GtkApplication, &charptr, &C.GVariant)

fn C.gtk_application_list_action_descriptions(&C.GtkApplication) &charptr

fn C.gtk_application_get_accels_for_action(&C.GtkApplication, &charptr) &charptr

fn C.gtk_application_set_accels_for_action(&C.GtkApplication, &charptr, &charptr)

fn C.gtk_application_get_actions_for_accel(&C.GtkApplication, &charptr) &charptr

// ApplicationWindow
fn C.gtk_application_window_new(&C.GtkApplication) &C.GtkWidget

fn C.gtk_application_window_set_show_menubar(&C.GtkApplicationWindow, bool)

fn C.gtk_application_window_get_show_menubar(&C.GtkApplicationWindow) bool

fn C.gtk_application_window_get_id(&C.GtkApplicationWindow) u32

fn C.gtk_application_window_set_help_overlay(&C.GtkApplicationWindow, &C.GtkShortcutsWindow)

fn C.gtk_application_window_get_help_overlay(&C.GtkApplicationWindow) &C.GtkShortcutsWindow

// CONTAINER
fn C.gtk_container_add(&C.GtkContainer, &C.GtkWidget)

fn C.gtk_container_remove(&C.GtkContainer, &C.GtkWidget)

fn C.gtk_container_add_with_properties(&C.GtkContainer, &C.GtkWidget, &charptr)

fn C.gtk_container_get_resize_mode(&C.GtkContainer) int

// C.GtkResizeMode
fn C.gtk_container_set_resize_mode(&C.GtkContainer, int, C.GtkResizeMode)

fn C.gtk_container_check_resize(&C.GtkContainer)

fn C.gtk_container_foreach(&C.GtkContainer, fn (), C.GtkCallback, voidptr, gpointer)

fn C.gtk_container_get_children(&C.GtkContainer) &GList

fn C.gtk_container_get_path_for_child(&C.GtkContainer, &C.GtkWidget) &C.GtkWidgetPath

fn C.gtk_container_set_reallocate_redraws(&C.GtkContainer, bool)

fn C.gtk_container_get_focus_child(&C.GtkContainer) &C.GtkWidget

fn C.gtk_container_set_focus_child(&C.GtkContainer, &C.GtkWidget)

fn C.gtk_container_get_focus_vadjustment(&C.GtkContainer) &C.GtkAdjustment

fn C.gtk_container_set_focus_vadjustment(&C.GtkContainer, &C.GtkAdjustment)

fn C.gtk_container_get_focus_hadjustment(&C.GtkContainer) &C.GtkAdjustment

fn C.gtk_container_set_focus_hadjustment(&C.GtkContainer, &C.GtkAdjustment)

fn C.gtk_container_resize_children(&C.GtkContainer)

fn C.gtk_container_child_type(&C.GtkContainer) C.GType

fn C.gtk_container_child_get(&C.GtkContainer, &C.GtkWidget, &charptr)

fn C.gtk_container_child_set(&C.GtkContainer, &C.GtkWidget, &charptr)

fn C.gtk_container_child_get_property(&C.GtkContainer, &C.GtkWidget, &charptr, &C.GValue)

fn C.gtk_container_child_set_property(&C.GtkContainer, &C.GtkWidget, &charptr, &C.GValue)

fn C.gtk_container_child_get_valist(&C.GtkContainer, &C.GtkWidget, &charptr, va_list)

fn C.gtk_container_child_set_valist(&C.GtkContainer, &C.GtkWidget, &charptr, va_list)

fn C.gtk_container_child_notify(&C.GtkContainer, &C.GtkWidget, &charptr)

fn C.gtk_container_child_notify_by_pspec(&C.GtkContainer, &C.GtkWidget, &GParamSpec)

fn C.gtk_container_forall(&C.GtkContainer, fn (), C.GtkCallback, voidptr, gpointer)

fn C.gtk_container_get_border_width(&C.GtkContainer) u32

fn C.gtk_container_set_border_width(&C.GtkContainer, u32)

// fn C.gtk_container_propagate_draw(&C.GtkContainer, &C.GtkWidget, &cairo_t)
fn C.gtk_container_get_focus_chain(&C.GtkContainer, &GList) bool

fn C.gtk_container_set_focus_chain(&C.GtkContainer, &GList)

fn C.gtk_container_unset_focus_chain(&C.GtkContainer)

fn C.gtk_container_class_find_child_property(&C._GObjectClass, &charptr) &GParamSpec

fn C.gtk_container_class_install_child_property(&C.GtkContainerClass, u32, &GParamSpec)

fn C.gtk_container_class_install_child_properties(&C.GtkContainerClass, u32, &GParamSpec)

fn C.gtk_container_class_list_child_properties(&C._GObjectClass, &u32) &GParamSpec

fn C.gtk_container_class_handle_border_width(&C.GtkContainerClass)

// GRID
fn C.gtk_grid_new() &C.GtkWidget

fn C.gtk_grid_attach(&C.GtkGrid, &C.GtkWidget, int, int, int, int)

fn C.gtk_grid_attach_next_to(&C.GtkGrid, &C.GtkWidget, &C.GtkWidget, int, C.GtkPositionType, int, int)

fn C.gtk_grid_get_child_at(&C.GtkGrid, int, int) &C.GtkWidget

fn C.gtk_grid_insert_row(&C.GtkGrid, int)

fn C.gtk_grid_insert_column(&C.GtkGrid, int)

fn C.gtk_grid_remove_row(&C.GtkGrid, int)

fn C.gtk_grid_remove_column(&C.GtkGrid, int)

fn C.gtk_grid_insert_next_to(&C.GtkGrid, &C.GtkWidget, int, C.GtkPositionType)

fn C.gtk_grid_set_row_homogeneous(&C.GtkGrid, bool)

fn C.gtk_grid_get_row_homogeneous(&C.GtkGrid) bool

fn C.gtk_grid_set_row_spacing(&C.GtkGrid, u32)

fn C.gtk_grid_get_row_spacing(&C.GtkGrid) u32

fn C.gtk_grid_set_column_homogeneous(&C.GtkGrid, bool)

fn C.gtk_grid_get_column_homogeneous(&C.GtkGrid) bool

fn C.gtk_grid_set_column_spacing(&C.GtkGrid, u32)

fn C.gtk_grid_get_column_spacing(&C.GtkGrid) u32

fn C.gtk_grid_get_baseline_row(&C.GtkGrid) int

fn C.gtk_grid_set_baseline_row(&C.GtkGrid, int)

fn C.gtk_grid_get_row_baseline_position(&C.GtkGrid, int) int

// C.GtkBaselinePosition
fn C.gtk_grid_set_row_baseline_position(&C.GtkGrid, int, int, C.GtkBaselinePosition)

// WIDGET
// fn C.gtk_widget_new(C.GType, charptr) &C.GtkWidget
fn C.gtk_widget_destroy(&C.GtkWidget)

fn C.gtk_widget_in_destruction(&C.GtkWidget) bool

fn C.gtk_widget_destroyed(&C.GtkWidget, &C.GtkWidget)

fn C.gtk_widget_unparent(&C.GtkWidget)

fn C.gtk_widget_show(&C.GtkWidget)

fn C.gtk_widget_show_now(&C.GtkWidget)

fn C.gtk_widget_hide(&C.GtkWidget)

fn C.gtk_widget_show_all(&C.GtkWidget)

fn C.gtk_widget_map(&C.GtkWidget)

fn C.gtk_widget_unmap(&C.GtkWidget)

fn C.gtk_widget_realize(&C.GtkWidget)

fn C.gtk_widget_unrealize(&C.GtkWidget)

// fn C.gtk_widget_draw(&C.GtkWidget, &cairo_t)
fn C.gtk_widget_queue_draw(&C.GtkWidget)

fn C.gtk_widget_queue_resize(&C.GtkWidget)

fn C.gtk_widget_queue_resize_no_redraw(&C.GtkWidget)

fn C.gtk_widget_queue_allocate(&C.GtkWidget)

// fn C.gtk_widget_get_frame_clock(&C.GtkWidget) &GdkFrameClock
fn C.gtk_widget_get_scale_factor(&C.GtkWidget) int

// fn C.gtk_widget_add_tick_callback(&C.GtkWidget, C.GtkTickCallback, gpointer, GDestroyNotify) u32
fn C.gtk_widget_remove_tick_callback(&C.GtkWidget, u32)

// fn C.gtk_widget_size_request(&C.GtkWidget, &C.GtkRequisition)
// fn C.gtk_widget_get_child_requisition(&C.GtkWidget, &C.GtkRequisition)
// fn C.gtk_widget_size_allocate(&C.GtkWidget, &C.GtkAllocation)
// fn C.gtk_widget_size_allocate_with_baseline(&C.GtkWidget, &C.GtkAllocation, int)
// fn C.gtk_widget_add_accelerator(&C.GtkWidget, charptr, &C.GtkAccelGroup, u32, GdkModifierType, C.GtkAccelFlags)
// fn C.gtk_widget_remove_accelerator(&C.GtkWidget, &C.GtkAccelGroup, u32, GdkModifierType) bool
// fn C.gtk_widget_set_accel_path(&C.GtkWidget, charptr, &C.GtkAccelGroup)
// fn C.gtk_widget_list_accel_closures(&C.GtkWidget) &GList
fn C.gtk_widget_can_activate_accel(&C.GtkWidget, u32) bool

// fn C.gtk_widget_event(&C.GtkWidget, &GdkEvent) bool
fn C.gtk_widget_activate(&C.GtkWidget) bool

fn C.gtk_widget_reparent(&C.GtkWidget, &C.GtkWidget)

// fn C.gtk_widget_intersect(&C.GtkWidget, &GdkRectangle, &GdkRectangle) bool
fn C.gtk_widget_is_focus(&C.GtkWidget) bool

fn C.gtk_widget_grab_focus(&C.GtkWidget)

fn C.gtk_widget_grab_default(&C.GtkWidget)

fn C.gtk_widget_set_name(&C.GtkWidget, charptr)

fn C.gtk_widget_get_name(&C.GtkWidget)

fn C.gtk_widget_set_state(&C.GtkWidget, int)

fn C.gtk_widget_set_sensitive(&C.GtkWidget, bool)

fn C.gtk_widget_set_parent(&C.GtkWidget, &C.GtkWidget)

// fn C.gtk_widget_set_parent_window(&C.GtkWidget, &GdkWindow)
// fn C.gtk_widget_get_parent_window(&C.GtkWidget) &GdkWindow
fn C.gtk_widget_set_events(&C.GtkWidget, int)

fn C.gtk_widget_get_events(&C.GtkWidget) int

fn C.gtk_widget_add_events(&C.GtkWidget, int)

// fn C.gtk_widget_set_device_events(&C.GtkWidget, &GdkDevice, GdkEventMask)
// fn C.gtk_widget_get_device_events(&C.GtkWidget, &GdkDevice) GdkEventMask
// fn C.gtk_widget_add_device_events(&C.GtkWidget, &GdkDevice, GdkEventMask)
// fn C.gtk_widget_set_device_enabled(&C.GtkWidget, &GdkDevice, bool)
// fn C.gtk_widget_get_device_enabled(&C.GtkWidget, &GdkDevice) bool
fn C.gtk_widget_get_toplevel(&C.GtkWidget) &C.GtkWidget

fn C.gtk_widget_get_ancestor(&C.GtkWidget, C.GType) &C.GtkWidget

// fn C.gtk_widget_get_visual(&C.GtkWidget) &GdkVisual
// fn C.gtk_widget_set_visual(&C.GtkWidget, &GdkVisual)
fn C.gtk_widget_get_pointer(&C.GtkWidget, &int, &int)

fn C.gtk_widget_is_ancestor(&C.GtkWidget, &C.GtkWidget) bool

fn C.gtk_widget_translate_coordinates(&C.GtkWidget, &C.GtkWidget, int, int, &int, &int) bool

fn C.gtk_widget_hide_on_delete(&C.GtkWidget) bool

// fn C.gtk_widget_set_style(&C.GtkWidget, &C.GtkStyle)
fn C.gtk_widget_ensure_style(&C.GtkWidget)

// fn C.gtk_widget_get_style(&C.GtkWidget) &C.GtkStyle
fn C.gtk_widget_reset_rc_styles(&C.GtkWidget)

// fn C.gtk_widget_get_default_style() &C.GtkStyle
fn C.gtk_widget_set_direction(&C.GtkWidget, int)

fn C.gtk_widget_get_direction(&C.GtkWidget) int

fn C.gtk_widget_set_default_direction(int)

fn C.gtk_widget_get_default_direction() int

// fn C.gtk_widget_shape_combine_region(&C.GtkWidget, &cairo_region_t)
// fn C.gtk_widget_input_shape_combine_region(&C.GtkWidget, &cairo_region_t)
fn C.gtk_widget_path(&C.GtkWidget, &u32, charptr, charptr)

fn C.gtk_widget_class_path(&C.GtkWidget, &u32, charptr, charptr)

fn C.gtk_widget_get_composite_name(&C.GtkWidget) charptr

// fn C.gtk_widget_override_background_color(&C.GtkWidget, /* C.GtkStateFlags */ int, &GdkRGBA)
// fn C.gtk_widget_override_color(&C.GtkWidget, /* C.GtkStateFlags */ int, &GdkRGBA)
// fn C.gtk_widget_override_font(&C.GtkWidget, &PangoFontDescription)
// fn C.gtk_widget_override_symbolic_color(&C.GtkWidget, charptr, &GdkRGBA)
// fn C.gtk_widget_override_cursor(&C.GtkWidget, &GdkRGBA, &GdkRGBA)
// fn C.gtk_widget_modify_style(&C.GtkWidget, &C.GtkRcStyle)
// fn C.gtk_widget_get_modifier_style(&C.GtkWidget) &C.GtkRcStyle
// fn C.gtk_widget_modify_fg(&C.GtkWidget, int, &GdkColor)
// fn C.gtk_widget_modify_bg(&C.GtkWidget, int, &GdkColor)
// fn C.gtk_widget_modify_text(&C.GtkWidget, int, &GdkColor)
// fn C.gtk_widget_modify_base(&C.GtkWidget, int, &GdkColor)
// fn C.gtk_widget_modify_font(&C.GtkWidget, &PangoFontDescription)
// fn C.gtk_widget_modify_cursor(&C.GtkWidget, &GdkColor, &GdkColor)
// fn C.gtk_widget_create_pango_context(&C.GtkWidget) &PangoContext
// fn C.gtk_widget_get_pango_context(&C.GtkWidget) &PangoContext
// fn C.gtk_widget_set_font_options(&C.GtkWidget, &cairo_font_options_t)
// fn C.gtk_widget_get_font_options(&C.GtkWidget) &cairo_font_options_t
// fn C.gtk_widget_set_font_map(&C.GtkWidget, &PangoFontMap)
// fn C.gtk_widget_get_font_map(&C.GtkWidget) &PangoFontMap
// fn C.gtk_widget_create_pango_layout(&C.GtkWidget, charptr) &PangoLayout
// fn C.gtk_widget_render_icon(&C.GtkWidget, charptr, C.GtkIconSize, charptr) &GdkPixbuf
// fn C.gtk_widget_render_icon_pixbuf(&C.GtkWidget, charptr, C.GtkIconSize) &GdkPixbuf
fn C.gtk_widget_pop_composite_child()

fn C.gtk_widget_push_composite_child()

fn C.gtk_widget_queue_draw_area(&C.GtkWidget, int, int, int, int)

// fn C.gtk_widget_queue_draw_region(&C.GtkWidget, &cairo_region_t)
fn C.gtk_widget_set_app_paintable(&C.GtkWidget, bool)

fn C.gtk_widget_set_double_buffered(&C.GtkWidget, bool)

fn C.gtk_widget_set_redraw_on_allocate(&C.GtkWidget, bool)

fn C.gtk_widget_set_composite_name(&C.GtkWidget, charptr)

fn C.gtk_widget_mnemonic_activate(&C.GtkWidget, bool) bool

// fn C.gtk_widget_class_install_style_property(&WidgetClass, &GParamSpec)
// fn C.gtk_widget_class_install_style_property_parser(&WidgetClass, &GParamSpec, C.GtkRcPropertyParser)
// fn C.gtk_widget_class_find_style_property(&WidgetClass, charptr) &GParamSpec
// fn C.gtk_widget_class_list_style_properties(&WidgetClass, &u32) &GParamSpec
// fn C.gtk_widget_region_intersect(&C.GtkWidget, &cairo_region_t) &cairo_region_t
// fn C.gtk_widget_send_expose(&C.GtkWidget, &GdkEvent) int
// fn C.gtk_widget_send_focus_change(&C.GtkWidget, &GdkEvent) bool
fn C.gtk_widget_style_get(&C.GtkWidget, charptr)

fn C.gtk_widget_style_get_property(&C.GtkWidget, charptr, &C.GValue)

// fn C.gtk_widget_style_get_valist(&C.GtkWidget, charptr, va_list)
// fn C.gtk_widget_style_attach(&C.GtkWidget)
// fn C.gtk_widget_class_set_accessible_type(&WidgetClass, C.GType)
// fn C.gtk_widget_class_set_accessible_role(&WidgetClass, AtkRole)
// fn C.gtk_widget_get_accessible(&C.GtkWidget) &AtkObject
fn C.gtk_widget_child_focus(&C.GtkWidget, int) bool

fn C.gtk_widget_child_notify(&C.GtkWidget, charptr)

fn C.gtk_widget_freeze_child_notify(&C.GtkWidget)

fn C.gtk_widget_get_child_visible(&C.GtkWidget) bool

fn C.gtk_widget_get_parent(&C.GtkWidget) &C.GtkWidget

// fn C.gtk_widget_get_settings(&C.GtkWidget) &C.GtkSettings
// fn C.gtk_widget_get_clipboard(&C.GtkWidget, GdkAtom) &C.GtkClipboard
// fn C.gtk_widget_get_display(&C.GtkWidget) &GdkDisplay
// fn C.gtk_widget_get_root_window(&C.GtkWidget) &GdkWindow
// fn C.gtk_widget_get_screen(&C.GtkWidget) &GdkScreen
fn C.gtk_widget_has_screen(&C.GtkWidget) bool

fn C.gtk_widget_get_size_request(&C.GtkWidget, &int, &int)

fn C.gtk_widget_set_child_visible(&C.GtkWidget, bool)

fn C.gtk_widget_set_size_request(&C.GtkWidget, int, int)

fn C.gtk_widget_thaw_child_notify(&C.GtkWidget)

fn C.gtk_widget_set_no_show_all(&C.GtkWidget, bool)

fn C.gtk_widget_get_no_show_all(&C.GtkWidget) bool

// fn C.gtk_widget_list_mnemonic_labels(&C.GtkWidget) &GList
fn C.gtk_widget_add_mnemonic_label(&C.GtkWidget, &C.GtkWidget)

fn C.gtk_widget_remove_mnemonic_label(&C.GtkWidget, &C.GtkWidget)

fn C.gtk_widget_is_composited(&C.GtkWidget) bool

fn C.gtk_widget_error_bell(&C.GtkWidget)

fn C.gtk_widget_keynav_failed(&C.GtkWidget, int) bool

fn C.gtk_widget_get_tooltip_markup(&C.GtkWidget) charptr

fn C.gtk_widget_set_tooltip_markup(&C.GtkWidget, charptr)

fn C.gtk_widget_get_tooltip_text(&C.GtkWidget) charptr

fn C.gtk_widget_set_tooltip_text(&C.GtkWidget, charptr)

fn C.gtk_widget_get_tooltip_window(&C.GtkWidget) &C.GtkWidget

fn C.gtk_widget_set_tooltip_window(&C.GtkWidget, &C.GtkWidget)

fn C.gtk_widget_get_has_tooltip(&C.GtkWidget) bool

fn C.gtk_widget_set_has_tooltip(&C.GtkWidget, bool)

fn C.gtk_widget_trigger_tooltip_query(&C.GtkWidget)

fn C.gtk_widget_get_window(&C.GtkWidget) &C.GdkWindow

fn C.gtk_widget_register_window(&C.GtkWidget, &C.GdkWindow)

fn C.gtk_widget_unregister_window(&C.GtkWidget, &C.GdkWindow)

// fn C.gtk_cairo_should_draw_window(&cairo_t, &GdkWindow) bool
// fn C.gtk_cairo_transform_to_window(&cairo_t, &C.GtkWidget, &GdkWindow)
fn C.gtk_widget_get_allocated_width(&C.GtkWidget) int

fn C.gtk_widget_get_allocated_height(&C.GtkWidget) int

fn C.gtk_widget_get_allocation(&C.GtkWidget, &C.GtkAllocation)

fn C.gtk_widget_set_allocation(&C.GtkWidget, &C.GtkAllocation)

fn C.gtk_widget_get_allocated_baseline(&C.GtkWidget) int

fn C.gtk_widget_get_allocated_size(&C.GtkWidget, &C.GtkAllocation, &int)

fn C.gtk_widget_get_clip(&C.GtkWidget, &C.GtkAllocation)

fn C.gtk_widget_set_clip(&C.GtkWidget, &C.GtkAllocation)

fn C.gtk_widget_get_app_paintable(&C.GtkWidget) bool

fn C.gtk_widget_get_can_default(&C.GtkWidget) bool

fn C.gtk_widget_set_can_default(&C.GtkWidget, bool)

fn C.gtk_widget_get_can_focus(&C.GtkWidget) bool

fn C.gtk_widget_set_can_focus(&C.GtkWidget, bool)

fn C.gtk_widget_get_focus_on_click(&C.GtkWidget) bool

fn C.gtk_widget_set_focus_on_click(&C.GtkWidget, bool)

fn C.gtk_widget_get_double_buffered(&C.GtkWidget) bool

fn C.gtk_widget_get_has_window(&C.GtkWidget) bool

fn C.gtk_widget_set_has_window(&C.GtkWidget, bool)

fn C.gtk_widget_get_sensitive(&C.GtkWidget) bool

fn C.gtk_widget_is_sensitive(&C.GtkWidget) bool

fn C.gtk_widget_get_state(&C.GtkWidget) int

fn C.gtk_widget_get_visible(&C.GtkWidget) bool

fn C.gtk_widget_is_visible(&C.GtkWidget) bool

fn C.gtk_widget_set_visible(&C.GtkWidget, bool)

fn C.gtk_widget_set_state_flags(&C.GtkWidget, int, bool)

fn C.gtk_widget_unset_state_flags(&C.GtkWidget, int)

fn C.gtk_widget_get_state_flags(&C.GtkWidget) int

fn C.gtk_widget_has_default(&C.GtkWidget) bool

fn C.gtk_widget_has_focus(&C.GtkWidget) bool

fn C.gtk_widget_has_visible_focus(&C.GtkWidget) bool

fn C.gtk_widget_has_grab(&C.GtkWidget) bool

fn C.gtk_widget_has_rc_style(&C.GtkWidget) bool

fn C.gtk_widget_is_drawable(&C.GtkWidget) bool

fn C.gtk_widget_is_toplevel(&C.GtkWidget) bool

fn C.gtk_widget_set_window(&C.GtkWidget, &C.GdkWindow)

fn C.gtk_widget_set_receives_default(&C.GtkWidget, bool)

fn C.gtk_widget_get_receives_default(&C.GtkWidget) bool

fn C.gtk_widget_set_support_multidevice(&C.GtkWidget, bool)

fn C.gtk_widget_get_support_multidevice(&C.GtkWidget) bool

fn C.gtk_widget_set_realized(&C.GtkWidget, bool)

fn C.gtk_widget_get_realized(&C.GtkWidget) bool

fn C.gtk_widget_set_mapped(&C.GtkWidget, bool)

fn C.gtk_widget_get_mapped(&C.GtkWidget) bool

// fn C.gtk_widget_get_requisition(&C.GtkWidget, &C.GtkRequisition)
fn C.gtk_widget_device_is_shadowed(&C.GtkWidget, &C.GdkDevice) bool

fn C.gtk_widget_get_modifier_mask(&C.GtkWidget, int, C.GdkModifierIntent) int

// GdkModifierType
fn C.gtk_widget_insert_action_group(&C.GtkWidget, charptr, &C.GActionGroup)

fn C.gtk_widget_get_opacity(&C.GtkWidget) f64

fn C.gtk_widget_set_opacity(&C.GtkWidget, f64)

fn C.gtk_widget_list_action_prefixes(&C.GtkWidget) &charptr

fn C.gtk_widget_get_action_group(&C.GtkWidget, charptr) &C.GActionGroup

fn C.gtk_widget_get_path(&C.GtkWidget) &C.GtkWidgetPath

fn C.gtk_widget_get_style_context(&C.GtkWidget) &C.GtkStyleContext

fn C.gtk_widget_reset_style(&C.GtkWidget)

// fn C.gtk_widget_class_get_css_name(&WidgetClass)
// fn C.gtk_widget_class_set_css_name(&WidgetClass, charptr)
// fn C.gtk_requisition_new() &C.GtkRequisition
// fn C.gtk_requisition_copy(&C.GtkRequisition) &C.GtkRequisition
// fn C.gtk_requisition_free(&C.GtkRequisition)
fn C.gtk_widget_get_preferred_height(&C.GtkWidget, &int, &int)

fn C.gtk_widget_get_preferred_width(&C.GtkWidget, &int, &int)

fn C.gtk_widget_get_preferred_height_for_width(&C.GtkWidget, int, &int, &int)

fn C.gtk_widget_get_preferred_width_for_height(&C.GtkWidget, int, &int, &int)

fn C.gtk_widget_get_preferred_height_and_baseline_for_width(&C.GtkWidget, int, &int, &int, &int, &int)

fn C.gtk_widget_get_request_mode(&C.GtkWidget) int

fn C.gtk_widget_get_preferred_size(&C.GtkWidget, &C.GtkRequisition, &C.GtkRequisition)

fn C.gtk_distribute_natural_allocation(int, u32, &C.GtkRequestedSize) int

fn C.gtk_widget_get_halign(&C.GtkWidget) int

fn C.gtk_widget_set_halign(&C.GtkWidget, int)

fn C.gtk_widget_get_valign(&C.GtkWidget) int

fn C.gtk_widget_get_valign_with_baseline(&C.GtkWidget) int

fn C.gtk_widget_set_valign(&C.GtkWidget, int)

fn C.gtk_widget_get_margin_left(&C.GtkWidget) int

fn C.gtk_widget_set_margin_left(&C.GtkWidget, int)

fn C.gtk_widget_get_margin_right(&C.GtkWidget) int

fn C.gtk_widget_set_margin_right(&C.GtkWidget, int)

fn C.gtk_widget_get_margin_start(&C.GtkWidget) int

fn C.gtk_widget_set_margin_start(&C.GtkWidget, int)

fn C.gtk_widget_get_margin_end(&C.GtkWidget) int

fn C.gtk_widget_set_margin_end(&C.GtkWidget, int)

fn C.gtk_widget_get_margin_top(&C.GtkWidget) int

fn C.gtk_widget_set_margin_top(&C.GtkWidget, int)

fn C.gtk_widget_get_margin_bottom(&C.GtkWidget) int

fn C.gtk_widget_set_margin_bottom(&C.GtkWidget, int)

fn C.gtk_widget_get_hexpand(&C.GtkWidget) bool

fn C.gtk_widget_set_hexpand(&C.GtkWidget, bool)

fn C.gtk_widget_get_hexpand_set(&C.GtkWidget) bool

fn C.gtk_widget_set_hexpand_set(&C.GtkWidget, bool)

fn C.gtk_widget_get_vexpand(&C.GtkWidget) bool

fn C.gtk_widget_set_vexpand(&C.GtkWidget, bool)

fn C.gtk_widget_get_vexpand_set(&C.GtkWidget) bool

fn C.gtk_widget_set_vexpand_set(&C.GtkWidget, bool)

fn C.gtk_widget_queue_compute_expand(&C.GtkWidget)

fn C.gtk_widget_compute_expand(&C.GtkWidget, int) bool

fn C.gtk_widget_init_template(&C.GtkWidget)

// fn C.gtk_widget_class_set_template(&WidgetClass, &GBytes)
// fn C.gtk_widget_class_set_template_from_resource(&WidgetClass, charptr)
// fn C.gtk_widget_get_template_child(&C.GtkWidget, C.GType, charptr) &C._GObject
// fn C.gtk_widget_class_bind_template_child_full(&WidgetClass, charptr, bool, gssize)
// fn C.gtk_widget_class_bind_template_callback_full(&WidgetClass, charptr, GCallback)
// fn C.gtk_widget_class_set_connect_func(&WidgetClass, C.GtkBuilderConnectFunc, gpointer, GDestroyNotify)
// fn C.gtk_widget_class_bind_template_childwidget_class(TypeName) #define
// fn C.gtk_widget_class_bind_template_child_internalwidget_class(TypeName) #define
// fn C.gtk_widget_class_bind_template_child_privatewidget_class(TypeName) #define
// fn C.gtk_widget_class_bind_template_child_internal_privatewidget_class(TypeName) #define
// fn C.gtk_widget_class_bind_template_callbackwidget_class() #define
fn C.gtk_builder_new() &C.GtkBuilder

fn C.gtk_builder_new_from_file(&charptr) &C.GtkBuilder

fn C.gtk_builder_new_from_resource(&charptr) &C.GtkBuilder

fn C.gtk_builder_new_from_string(&charptr, int) &C.GtkBuilder

fn C.gtk_builder_add_callback_symbol(&C.GtkBuilder, &charptr, voidptr, C.GCallback)

// fn C.gtk_builder_add_callback_symbols(&C.GtkBuilder, &charptr, GCallback)
// fn C.gtk_builder_lookup_callback_symbol(&C.GtkBuilder, &charptr) GCallback
fn C.gtk_builder_add_from_file(&C.GtkBuilder, &charptr, &GError) u32

fn C.gtk_builder_add_from_resource(&C.GtkBuilder, &charptr, &GError) u32

fn C.gtk_builder_add_from_string(&C.GtkBuilder, &charptr, int, &GError) u32

fn C.gtk_builder_add_objects_from_file(&C.GtkBuilder, &charptr, &charptr, &GError) u32

fn C.gtk_builder_add_objects_from_string(&C.GtkBuilder, &charptr, int, &charptr, &GError) u32

fn C.gtk_builder_add_objects_from_resource(&C.GtkBuilder, &charptr, &charptr, &GError) u32

fn C.gtk_builder_extend_with_template(&C.GtkBuilder, &C.GtkWidget, C.GType, &charptr, int, &GError) u32

fn C.gtk_builder_get_object(&C.GtkBuilder, &charptr) &C._GObject

fn C.gtk_builder_get_objects(&C.GtkBuilder) &C._GSList

fn C.gtk_builder_expose_object(&C.GtkBuilder, &charptr, &C._GObject)

fn C.gtk_builder_connect_signals(&C.GtkBuilder, voidptr)

// fn C.gtk_builder_connect_signals_full(&C.GtkBuilder, C.GtkBuilderConnectFunc, voidptr)
fn C.gtk_builder_set_translation_domain(&C.GtkBuilder, &charptr)

fn C.gtk_builder_get_translation_domain(&C.GtkBuilder) charptr

fn C.gtk_builder_set_application(&C.GtkBuilder, &C.GtkApplication)

fn C.gtk_builder_get_application(&C.GtkBuilder) &C.GtkApplication

fn C.gtk_builder_get_type_from_name(&C.GtkBuilder, &char) C.GType

fn C.gtk_builder_value_from_string(&C.GtkBuilder, &GParamSpec, &charptr, &C.GValue, &GError) bool

fn C.gtk_builder_value_from_string_type(&C.GtkBuilder, C.GType, &charptr, &C.GValue, &GError) bool

// Buildable
fn C.gtk_buildable_set_name(&C.GtkBuildable, &charptr)

fn C.gtk_buildable_get_name(&C.GtkBuildable) charptr

fn C.gtk_buildable_add_child(&C.GtkBuildable, &C.GtkBuilder, &C._GObject, &charptr)

fn C.gtk_buildable_set_buildable_property(&C.GtkBuildable, &C.GtkBuilder, &charptr, &C.GValue)

fn C.gtk_buildable_construct_child(&C.GtkBuildable, &C.GtkBuilder, &charptr) &C._GObject

fn C.gtk_buildable_custom_tag_start(&C.GtkBuildable, &C.GtkBuilder, &C._GObject, &charptr, &GMarkupParser, &voidptr) bool

fn C.gtk_buildable_custom_tag_end(&C.GtkBuildable, &C.GtkBuilder, &C._GObject, &charptr, &voidptr)

fn C.gtk_buildable_custom_finished(&C.GtkBuildable, &C.GtkBuilder, &C._GObject, &charptr, voidptr)

fn C.gtk_buildable_parser_finished(&C.GtkBuildable, &C.GtkBuilder)

fn C.gtk_buildable_get_internal_child(&C.GtkBuildable, &C.GtkBuilder, &charptr) &C._GObject

// AboutDialog
fn C.gtk_about_dialog_new() &C.GtkWidget

fn C.gtk_about_dialog_get_program_name(&C.GtkAboutDialog) charptr

fn C.gtk_about_dialog_set_program_name(&C.GtkAboutDialog, charptr)

fn C.gtk_about_dialog_get_version(&C.GtkAboutDialog) charptr

fn C.gtk_about_dialog_set_version(&C.GtkAboutDialog, charptr)

fn C.gtk_about_dialog_get_copyright(&C.GtkAboutDialog) charptr

fn C.gtk_about_dialog_set_copyright(&C.GtkAboutDialog, charptr)

fn C.gtk_about_dialog_get_comments(&C.GtkAboutDialog) charptr

fn C.gtk_about_dialog_set_comments(&C.GtkAboutDialog, charptr)

fn C.gtk_about_dialog_get_license(&C.GtkAboutDialog) charptr

fn C.gtk_about_dialog_set_license(&C.GtkAboutDialog, charptr)

fn C.gtk_about_dialog_get_wrap_license(&C.GtkAboutDialog) bool

fn C.gtk_about_dialog_set_wrap_license(&C.GtkAboutDialog, bool)

fn C.gtk_about_dialog_get_license_type(&C.GtkAboutDialog) int

fn C.gtk_about_dialog_set_license_type(&C.GtkAboutDialog, int)

fn C.gtk_about_dialog_get_website(&C.GtkAboutDialog) charptr

fn C.gtk_about_dialog_set_website(&C.GtkAboutDialog, charptr)

fn C.gtk_about_dialog_get_website_label(&C.GtkAboutDialog) charptr

fn C.gtk_about_dialog_set_website_label(&C.GtkAboutDialog, charptr)

fn C.gtk_about_dialog_get_authors(&C.GtkAboutDialog) &charptr

fn C.gtk_about_dialog_set_authors(&C.GtkAboutDialog, &charptr)

fn C.gtk_about_dialog_get_artists(&C.GtkAboutDialog) &charptr

fn C.gtk_about_dialog_set_artists(&C.GtkAboutDialog, &charptr)

fn C.gtk_about_dialog_get_documenters(&C.GtkAboutDialog) &charptr

fn C.gtk_about_dialog_set_documenters(&C.GtkAboutDialog, &charptr)

fn C.gtk_about_dialog_get_translator_credits(&C.GtkAboutDialog) charptr

fn C.gtk_about_dialog_set_translator_credits(&C.GtkAboutDialog, charptr)

fn C.gtk_about_dialog_get_logo(&C.GtkAboutDialog) &C.GdkPixbuf

fn C.gtk_about_dialog_set_logo(&C.GtkAboutDialog, &C.GdkPixbuf)

fn C.gtk_about_dialog_get_logo_icon_name(&C.GtkAboutDialog) charptr

fn C.gtk_about_dialog_set_logo_icon_name(&C.GtkAboutDialog, charptr)

fn C.gtk_about_dialog_add_credit_section(&C.GtkAboutDialog, charptr, &charptr)

fn C.gtk_show_about_dialog(&C.GtkWidget, charptr)

// GOBJECT
fn C.g_object_unref(voidptr)

// ORIENTABLE
fn C.gtk_orientable_get_orientation(&C.GtkWidget) int

fn C.gtk_orientable_set_orientation(&C.GtkWidget, int)

// Requisition
fn C.gtk_requisition_new() &C.GtkRequisition

fn C.gtk_requisition_copy(&C.GtkRequisition) &C.GtkRequisition

fn C.gtk_requisition_free(&C.GtkRequisition)

// Actionable
fn C.gtk_actionable_get_action_name(&C.GtkWidget) charptr

fn C.gtk_actionable_set_action_name(&C.GtkWidget, &charptr)

fn C.gtk_actionable_get_action_target_value(&C.GtkWidget) &C.GVariant

fn C.gtk_actionable_set_action_target_value(&C.GtkWidget, &C.GVariant)

fn C.gtk_actionable_set_action_target(&C.GtkWidget, &charptr)

fn C.gtk_actionable_set_detailed_action_name(&C.GtkWidget, charptr)

// MessageDialog
fn C.gtk_message_dialog_new(&C.GtkWindow, C.GtkDialogFlags, C.GtkMessageType, C.GtkButtonsType, charptr) &C.GtkWidget

fn C.gtk_message_dialog_new_with_markup(&C.GtkWindow, C.GtkDialogFlags, C.GtkMessageType, C.GtkButtonsType, charptr) &C.GtkWidget

fn C.gtk_message_dialog_set_markup(&C.GtkWidget, charptr)

fn C.gtk_message_dialog_set_image(&C.GtkWidget, &C.GtkWidget)

fn C.gtk_message_dialog_get_image(&C.GtkWidget) &C.GtkWidget

fn C.gtk_message_dialog_format_secondary_text(&C.GtkWidget, charptr)

fn C.gtk_message_dialog_format_secondary_markup(&C.GtkWidget, charptr)

fn C.gtk_message_dialog_get_message_area(&C.GtkWidget) &C.GtkWidget

// ToggleButton
fn C.gtk_toggle_button_new() &C.GtkWidget

fn C.gtk_toggle_button_new_with_label(charptr) &C.GtkWidget

fn C.gtk_toggle_button_new_with_mnemonic(charptr) &C.GtkWidget

fn C.gtk_toggle_button_set_mode(&C.GtkWidget, bool)

fn C.gtk_toggle_button_get_mode(&C.GtkWidget) bool

fn C.gtk_toggle_button_toggled(&C.GtkWidget)

fn C.gtk_toggle_button_get_active(&C.GtkWidget) bool

fn C.gtk_toggle_button_set_active(&C.GtkWidget, bool)

fn C.gtk_toggle_button_get_inconsistent(&C.GtkWidget) bool

fn C.gtk_toggle_button_set_inconsistent(&C.GtkWidget, bool)

// CheckButton
fn C.gtk_check_button_new() &C.GtkWidget

fn C.gtk_check_button_new_with_label(charptr) &C.GtkWidget

fn C.gtk_check_button_new_with_mnemonic(charptr) &C.GtkWidget

// RadioButton
fn C.gtk_radio_button_new(&C._GSList) &C.GtkWidget

fn C.gtk_radio_button_new_from_widget(&C.GtkWidget) &C.GtkWidget

fn C.gtk_radio_button_new_with_label(&C._GSList, charptr) &C.GtkWidget

fn C.gtk_radio_button_new_with_label_from_widget(&C.GtkWidget, charptr) &C.GtkWidget

fn C.gtk_radio_button_new_with_mnemonic(&C._GSList, charptr) &C.GtkWidget

fn C.gtk_radio_button_new_with_mnemonic_from_widget(&C.GtkWidget, charptr) &C.GtkWidget

fn C.gtk_radio_button_set_group(&C.GtkWidget, &C._GSList)

fn C.gtk_radio_button_get_group(&C.GtkWidget) &C._GSList

fn C.gtk_radio_button_join_group(&C.GtkWidget, &C.GtkWidget)

fn C._() charptr

// OTHERS
fn C.g_intern_static_string(charptr) charptr

fn C.g_signal_connect(&C.GtkWidget, charptr, voidptr, voidptr) u32

fn C.g_strfreev(&charptr)
