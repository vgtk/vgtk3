module gtk

/* MAIN */
fn C.gtk_init(int, voidptr)
fn C.gtk_main_quit()
fn C.gtk_main()
/* WINDOW */
fn C.gtk_window_new(int) &Widget
fn C.gtk_window_get_default_size(&int, &int)
fn C.gtk_window_set_default_size(&Widget, int, int)
fn C.gtk_window_set_position(&Widget, int)
fn C.gtk_window_get_title(&Widget) charptr
fn C.gtk_window_set_title(&Widget, charptr)
/* BUTTON */
fn C.gtk_button_new_with_label(charptr) &Widget
fn C.gtk_button_get_label(&Widget) charptr
fn C.gtk_button_set_label(&Widget, charptr)
/* ENTRY */
fn C.gtk_entry_new() &Widget
fn C.gtk_entry_get_text(&Widget) charptr
fn C.gtk_entry_set_invisible_char(&Widget, rune)
fn C.gtk_entry_set_text(&Widget, charptr)
fn C.gtk_entry_set_visibility(&Widget, bool)
/* ACCEL MAP */
fn C.gtk_accel_map_add_entry(charptr, int, int)

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

fn C.g_intern_static_string(charptr) charptr
fn C.g_signal_connect(&Widget, charptr, voidptr, voidptr) int
fn C.gtk_container_add(&Widget, &Widget)
fn C.gtk_widget_set_size_request(&Widget, int, int)
fn C.gtk_widget_show_all(&Widget)
