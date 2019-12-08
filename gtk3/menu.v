module gtk3

fn C.gtk_menu_item_set_submenu(&C.GtkWidget, &C.GtkWidget)
fn C.gtk_menu_shell_append(&C.GtkWidge, &C.GtkWidget)

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

pub fn (mi MenuItem) set_submenu(menu Menu) {
	C.gtk_menu_item_set_submenu(mi.gtk_widget, menu.gtk_widget)
}

pub fn (mi &MenuItem) get_gtk_widget() &Widget {
	return mi.gtk_widget
}