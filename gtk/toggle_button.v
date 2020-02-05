module gtk

pub struct ToggleButton {
	c &GtkWidget
}

pub fn new_toggle_button() ToggleButton {
	return ToggleButton{gtk_toggle_button_new()}
}

pub fn new_toggle_button_with_label(label string) ToggleButton {
	return ToggleButton{gtk_toggle_button_new_with_label(label.str)}
}

pub fn new_toggle_button_with_mnemonic(label string) ToggleButton {
	return ToggleButton{gtk_toggle_button_new_with_mnemonic(label.str)}
}

pub fn (t ToggleButton) set_mode(draw_indicator bool) {
	gtk_toggle_button_set_mode(t.c, draw_indicator)
}

pub fn (t ToggleButton) get_mode() bool {
	return gtk_toggle_button_get_mode(t.c)
}

pub fn (t ToggleButton) toggled() {
	gtk_toggle_button_toggled(t.c)
}

pub fn (t ToggleButton) get_active() bool {
	return gtk_toggle_button_get_active(t.c)
}

pub fn (t ToggleButton) set_active(is_active bool) {
	gtk_toggle_button_set_active(t.c, is_active)
}

pub fn (t ToggleButton) get_inconsistent() bool {
	return gtk_toggle_button_get_inconsistent(t.c)
}

pub fn (t ToggleButton) set_inconsistent(setting bool) {
	gtk_toggle_button_set_inconsistent(t.c, setting)
}
