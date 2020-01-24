module gtk

pub struct MenuBar {
	widget &GtkWidget
}

pub struct Menu {
	widget &GtkWidget
}

pub struct MenuItem {
	widget &GtkWidget
}

/// CONSTRUCTORS
pub fn new_menu_bar() MenuBar {
	return MenuBar{gtk_menu_bar_new()}
}

pub fn new_menu() Menu {
	return Menu{gtk_menu_new()}
}

pub fn new_menu_item_with_label(label string) MenuItem {
	return MenuItem{gtk_menu_item_new_with_label(label.str)}
}

pub fn new_menu_item() MenuItem {
	return MenuItem{gtk_menu_item_new()}
}

// MENUBAR
pub fn (mb &MenuBar) get_gtk_widget() &GtkWidget {
	return mb.widget
}

pub fn (mb MenuBar) append(item MenuItem) {
	gtk_menu_shell_append(mb.widget, item.widget)
}

// MENU
pub fn (m &Menu) get_gtk_widget() &GtkWidget {
	return m.widget
}

pub fn (m Menu) append(item MenuItem) {
	gtk_menu_shell_append(m.widget, item.widget)
}

// MENUITEM
pub fn (mi MenuItem) set_submenu(menu Menu) {
	gtk_menu_item_set_submenu(mi.widget, menu.widget)
}

pub fn (mi &MenuItem) on(event_name string, handler fn(menu_item MenuItem, _data voidptr), data voidptr) int {
	return C.g_signal_connect(mi.widget, event_name.str, handler, data)
}

pub fn (mi MenuItem) set_label(label string) {
	gtk_menu_item_set_label(mi.widget, label.str)
}

pub fn (mi MenuItem) get_label() string {
	return tos3(gtk_menu_item_get_label(mi.widget))
}

pub fn (mi MenuItem) get_use_underline() bool {
	return gtk_menu_item_get_use_underline(mi.widget)
}

pub fn (mi MenuItem) set_use_underline(under bool) {
	gtk_menu_item_set_use_underline(mi.widget, under)
}

pub fn (mi MenuItem) set_accel_path(label string) {
	gtk_menu_item_set_accel_path(mi.widget, label.str)
}

pub fn (mi MenuItem) get_accel_path() string {
	return tos3(gtk_menu_item_get_accel_path(mi.widget))
}

pub fn (mi &MenuItem) get_gtk_widget() &GtkWidget {
	return mi.widget
}
