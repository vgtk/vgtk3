module gtk3 

/////////////// MAIN ///////////////
fn C.gtk_init(int, voidptr)
fn C.gtk_main()
fn C.gtk_main_quit()
/////////////// WINDOW ///////////////
fn C.gtk_window_set_default_size(&Widget, int, int)
fn C.gtk_window_set_position(&Widget, int)
fn C.gtk_window_set_title(&Widget, charptr)
fn C.gtk_window_new(int) &Widget
/////////////// BUTTON ///////////////
fn C.gtk_button_new_with_label(voidptr) &Widget
fn C.gtk_entry_new() &Widget
fn C.gtk_alignment_new(int, int, int, int) &Widget
fn C.gtk_vbox_new(bool, int) &Widget
fn C.gtk_hbox_new(bool, int) &Widget
fn C.gtk_menu_bar_new() &Widget
fn C.gtk_menu_new() &Widget
fn C.gtk_menu_item_new_with_label(voidptr) &Widget
fn C.gtk_menu_item_new() &Widget

fn C.g_signal_connect(&Widget, voidptr, voidptr, voidptr) int
fn C.gtk_container_add(&Widget, &Widget)
fn C.gtk_widget_show_all(&Widget)
fn C.gtk_widget_set_size_request(&Widget, int, int)

fn C.g_intern_static_string(voidptr) voidptr
