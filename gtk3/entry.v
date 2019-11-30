module gtk3

fn C.gtk_entry_get_text(&C.GtkWidget) voidptr
fn C.gtk_entry_set_text(&C.GtkWidget, string)
fn C.gtk_entry_set_visibility(&C.GtkWidget, bool)
fn C.gtk_entry_set_invisible_char(&C.GtkWidget, rune)

pub fn (e &Entry) get_gtk_widget() &C.GtkWidget {
	return e.gtk_widget
}

pub fn (e Entry) get_text() string {
	return tos3(C.gtk_entry_get_text(e.gtk_widget))
}

pub fn (e Entry) set_text(text string) {
	C.gtk_entry_set_text(e.gtk_widget, text.str)
}

pub fn (e Entry) set_visibility(visible bool) {
	C.gtk_entry_set_visibility(e.gtk_widget, visible)
}

pub fn (e Entry) set_invisible_char(ch rune) {
	C.gtk_entry_set_invisible_char(e.gtk_widget, ch)
} 
