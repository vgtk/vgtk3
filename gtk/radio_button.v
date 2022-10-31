module gtk

// import glib

// pub struct RadioButton {
// 	c &C.GtkWidget
// }

// pub fn new_radio_button(group glib.SList) RadioButton {
// 	return RadioButton{C.gtk_radio_button_new(group.get_cptr())}
// }

// pub fn new_radio_button_from_widget(radio_group_member RadioButton) RadioButton {
// 	return RadioButton{C.gtk_radio_button_new_from_widget(radio_group_member.c)}
// }

// pub fn new_radio_button_with_label(group glib.SList, label string) RadioButton {
// 	return RadioButton{C.gtk_radio_button_new_with_label(group.get_cptr(), label.str)}
// }

// pub fn new_radio_button_with_label_from_widget(radio_group_member RadioButton, label string) RadioButton {
// 	return RadioButton{C.gtk_radio_button_new_with_label_from_widget(radio_group_member.c,
// 		label.str)}
// }

// pub fn new_radio_button_with_mnemonic(group glib.SList, label string) RadioButton {
// 	return RadioButton{C.gtk_radio_button_new_with_mnemonic(group.get_cptr(), label.str)}
// }

// pub fn new_radio_button_with_mnemonic_from_widget(radio_group_member RadioButton, label string) RadioButton {
// 	return RadioButton{C.gtk_radio_button_new_with_mnemonic_from_widget(radio_group_member.c,
// 		label.str)}
// }

// pub fn (r RadioButton) set_group(group glib.SList) {
// 	C.gtk_radio_button_set_group(r.c, group.get_cptr())
// }

// pub fn (r RadioButton) get_group() glib.SList {
// 	return glib.SList{C.gtk_radio_button_get_group(r.c)}
// }

// pub fn (r RadioButton) join_group(group_source RadioButton) {
// 	C.gtk_radio_button_join_group(r.c, group_source.c)
// }
