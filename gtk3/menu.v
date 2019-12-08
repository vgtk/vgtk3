module gtk3

fn C.gtk_menu_item_set_submenu(&C.GtkWidget, &C.GtkWidget)
fn C.gtk_menu_shell_append(&C.GtkWidge, &C.GtkWidget)
fn C.gtk_menu_item_set_label(&C.GtkWidget, voidptr)
fn C.gtk_menu_item_get_label(&C.GtkWidget) voidptr
fn C.gtk_menu_item_get_use_underline(&C.GtkWidget) bool
fn C.gtk_menu_item_set_use_underline(&C.GtkWidget, bool)
fn C.gtk_menu_item_set_accel_path(&C.GtkWidget, voidptr)
fn C.gtk_menu_item_get_accel_path(&C.GtkWidget) voidptr

pub fn (mb &MenuBar) get_gtk_widget() &Widget {
	return mb.gtk_widget
}

pub fn (mb MenuBar) append(item MenuItem) {
	C.gtk_menu_shell_append(mb.gtk_widget, item.gtk_widget)
}

pub fn (m &Menu) get_gtk_widget() &Widget {
	return m.gtk_widget
}

pub fn (m Menu) append(item MenuItem) {
	C.gtk_menu_shell_append(m.gtk_widget, item.gtk_widget)
}

// MenuItem
pub fn (mi MenuItem) set_submenu(menu Menu) {
	C.gtk_menu_item_set_submenu(mi.gtk_widget, menu.gtk_widget)
}

pub fn (mi &MenuItem) add_on_activate(handler fn(&C.GtkWidget,&gtk3.MenuItem)) int {
	return C.g_signal_connect(mi.gtk_widget, "activate", handler, mi)
}

pub fn (mi MenuItem) set_label(label string) {
	C.gtk_menu_item_set_label(mi.gtk_widget, label.str)
}

pub fn (mi MenuItem) get_label() string {
	return cstring_to_vstring(C.gtk_menu_item_get_label(mi.gtk_widget))
}

pub fn (mi MenuItem) get_use_underline() bool {
	return C.gtk_menu_item_get_use_underline(mi.gtk_widget)
}

pub fn (mi MenuItem) set_use_underline(under bool) {
	C.gtk_menu_item_set_use_underline(mi.gtk_widget, under)
}

pub fn (mi MenuItem) set_accel_path(label string) {
	C.gtk_menu_item_set_accel_path(mi.gtk_widget, label.str)
}

pub fn (mi MenuItem) get_accel_path() string {
	return cstring_to_vstring(C.gtk_menu_item_get_accel_path(mi.gtk_widget))
}

pub fn (mi &MenuItem) get_gtk_widget() &Widget {
	return mi.gtk_widget
}