module gtk

pub struct MenuBar {
	gtk_widget &Widget
}

pub struct Menu {
	gtk_widget &Widget
}

pub struct MenuItem {
	gtk_widget &Widget
}

/// CONSTRUCTORS
pub fn new_menu_bar() MenuBar {
	bar := MenuBar{gtk_menu_bar_new()}
	return bar
}

pub fn new_menu() Menu {
	menu := Menu{gtk_menu_new()}
	return menu
}

pub fn new_menu_item_with_label(label string) MenuItem {
	item := MenuItem{gtk_menu_item_new_with_label(label.str)}
	return item
}

pub fn new_menu_item() MenuItem {
	item := MenuItem{gtk_menu_item_new()}
	return item
}

// MENUBAR
pub fn (mb &MenuBar) get_gtk_widget() &Widget {
	return mb.gtk_widget
}

pub fn (mb MenuBar) append(item MenuItem) {
	gtk_menu_shell_append(mb.gtk_widget, item.gtk_widget)
}

// MENU
pub fn (m &Menu) get_gtk_widget() &Widget {
	return m.gtk_widget
}

pub fn (m Menu) append(item MenuItem) {
	gtk_menu_shell_append(m.gtk_widget, item.gtk_widget)
}

// MENUITEM
pub fn (mi MenuItem) set_submenu(menu Menu) {
	gtk_menu_item_set_submenu(mi.gtk_widget, menu.gtk_widget)
}

pub fn (mi &MenuItem) on(event_name string, handler fn(&Widget,MenuItem)) int {
	return C.g_signal_connect(mi.gtk_widget, event_name.str, handler, mi)
}

pub fn (mi MenuItem) set_label(label string) {
	gtk_menu_item_set_label(mi.gtk_widget, label.str)
}

pub fn (mi MenuItem) get_label() string {
	return tos3(gtk_menu_item_get_label(mi.gtk_widget))
}

pub fn (mi MenuItem) get_use_underline() bool {
	return gtk_menu_item_get_use_underline(mi.gtk_widget)
}

pub fn (mi MenuItem) set_use_underline(under bool) {
	gtk_menu_item_set_use_underline(mi.gtk_widget, under)
}

pub fn (mi MenuItem) set_accel_path(label string) {
	gtk_menu_item_set_accel_path(mi.gtk_widget, label.str)
}

pub fn (mi MenuItem) get_accel_path() string {
	return tos3(gtk_menu_item_get_accel_path(mi.gtk_widget))
}

pub fn (mi &MenuItem) get_gtk_widget() &Widget {
	return mi.gtk_widget
}
