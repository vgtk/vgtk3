module gtk3 

fn C.gtk_init(int, voidptr)
fn C.gtk_main()
fn C.gtk_main_quit()
fn C.gtk_window_new(int) &C.GtkWidget
fn C.gtk_button_new_with_label(voidptr) &C.GtkWidget
fn C.gtk_entry_new() &C.GtkWidget
fn C.gtk_alignment_new(int, int, int, int) &C.GtkWidget
fn C.gtk_vbox_new(bool, int) &C.GtkWidget
fn C.gtk_hbox_new(bool, int) &C.GtkWidget
fn C.gtk_menu_bar_new() &C.GtkWidget
fn C.gtk_menu_new() &C.GtkWidget
fn C.gtk_menu_item_new_with_label(voidptr) &C.GtkWidget
fn C.gtk_menu_item_new() &C.GtkWidget

fn C.g_signal_connect(&C.GtkWidget, voidptr, voidptr, voidptr) int
fn C.gtk_container_add(&C.GtkWidget, &C.GtkWidget)
fn C.gtk_widget_show_all(&C.GtkWidget)
fn C.gtk_widget_set_size_request(&C.GtkWidget, int, int)

fn C.g_intern_static_string(voidptr) voidptr