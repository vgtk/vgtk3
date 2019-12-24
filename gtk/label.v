module gtk

struct Label {
	widget &Widget
}

pub fn new_label(label string) Label {
	if label.str == 0 {
		panic('vgtk3.gtk.new_label: nil string')
	}
	return Label{gtk_label_new(label.str)}
}

pub fn new_empty_label() Label {
	return Label{gtk_label_new(0)}
}

pub fn (l Label) set_text(label string) {
	gtk_label_set_text(l.widget, label.str)
}

// TODO: gtk_label_set_attributes()

pub fn (l Label) set_markup(str string) {
	gtk_label_set_markup(l.widget, str.str)
}

pub fn (l Label) set_markup_with_mnemonic(str string) {
	gtk_label_set_markup_with_mnemonic(l.widget, str.str)
}

pub fn (l Label) set_pattern(pattern string) {
	gtk_label_set_pattern(l.widget, pattern.str)
}

pub fn (l Label) set_justify(jtype Justify) {
	gtk_label_set_justify(l.widget, jtype)
}

pub fn (l Label) set_xalign(xalign f32) {
	if xalign > 1 || xalign < 0 {
		panic('vgtk3.gtk.label.set_xalign: val must between 0 and 1')
	}
	gtk_label_set_xalign(l.widget, xalign)
}

pub fn (l Label) set_yalign(yalign f32) {
	if yalign > 1 || yalign < 0 {
		panic('vgtk3.gtk.label.set_yalign: val must between 0 and 1')
	}
	gtk_label_set_yalign(l.widget, yalign)
}

// TODO: gtk_label_set_ellipsize()

pub fn (l Label) set_width_chars(n_chars int) {
	gtk_label_set_width_chars(l.widget, n_chars)
}

pub fn (l Label) set_max_width_chars(n_chars int) {
	gtk_label_set_max_width_chars(l.widget, n_chars)
}

pub fn (l Label) set_line_wrap(setting bool) {
	gtk_label_set_line_wrap(l.widget, setting)
}

// TODO: gtk_label_set_line_wrap_mode()

pub fn (l Label) set_lines(lines int) {
	gtk_label_set_lines(l.widget, lines)
}
