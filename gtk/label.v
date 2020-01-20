module gtk

pub struct Label {
	widget &Widget
}

pub fn new_label(label string) Label {
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

pub fn (l Label) get_layout_offsets() (int, int) {
	x := 0
	y := 0
	gtk_label_get_layout_offsets(l.widget, &x, &y)
	return x, y
}

pub fn (l Label) get_mnemonic_keyval() u32 {
	return gtk_label_get_mnemonic_keyval(l.widget)
}

pub fn (l Label) get_selectable() bool {
	return gtk_label_get_selectable(l.widget)
}

pub fn (l Label) get_text() string {
	return tos3(gtk_label_get_text(l.widget))
}

pub fn new_label_with_mnemonic(label string) Label {
	return Label{gtk_label_new_with_mnemonic(label.str)}
}

pub fn (l Label) select_region(start_offset int, end_offset int) {
	gtk_label_select_region(l.widget, start_offset, end_offset)
}

pub fn (l Label) set_mnemonic_widget(widget Widgeter) {
	wgt := widget.get_gtk_widget()
	gtk_label_set_mnemonic_widget(l.widget, wgt)
}

pub fn (l Label) set_selectable(setting bool) {
	gtk_label_set_selectable(l.widget, setting)
}

pub fn (l Label) set_text_with_mnemonic(str string) {
	gtk_label_set_text_with_mnemonic(l.widget, str.str)
}

pub fn (l Label) get_justify() Justify {
	return Justify(gtk_label_get_justify(l.widget))
}

pub fn (l Label) get_xalign() f32 {
	return gtk_label_get_xalign(l.widget)
}

pub fn (l Label) get_yalign() f32 {
	return gtk_label_get_yalign(l.widget)
}

/* TODO: PangoEllipsizeMode gtk_label_get_ellipsize (GtkLabel *label) */

pub fn (l Label) get_width_chars() int {
	return gtk_label_get_width_chars(l.widget)
}

pub fn (l Label) get_max_width_chars() int {
	return gtk_label_get_max_width_chars(l.widget)
}

pub fn (l Label) get_label() string {
	str := gtk_label_get_label(l.widget)
	return tos3(str)
}

/* TODO: PangoLayout * gtk_label_get_layout (GtkLabel *label) */

pub fn (l Label) get_line_wrap() bool {
	return gtk_label_get_line_wrap(l.widget)
}

/* TODO: PangoWrapMode gtk_label_get_line_wrap_mode (GtkLabel *label) */

pub fn (l Label) get_lines() int {
	return gtk_label_get_lines(l.widget)
}

pub fn (l Label) get_mnemonic_widget() &Widget {
	return gtk_label_get_mnemonic_widget(l.widget)
}

pub fn (l Label) get_selection_bounds() (int, int) {
	start := 0
	end := 0
	gtk_label_get_selection_bounds(l.widget, &start, &end)
	return start, end
}

pub fn (l Label) get_use_markup() bool {
	return gtk_label_get_use_markup(l.widget)
}

pub fn (l Label) get_use_underline() bool {
	return gtk_label_get_use_underline(l.widget)
}

pub fn (l Label) get_single_line_mode() bool {
	return gtk_label_get_single_line_mode(l.widget)
}

pub fn (l Label) get_angle() f64 {
	return gtk_label_get_angle(l.widget)
}

pub fn (l Label) set_label(str string) {
	gtk_label_set_label(l.widget, str.str)
}

pub fn (l Label) set_use_markup(setting bool) {
	gtk_label_set_use_markup(l.widget, setting)
}

pub fn (l Label) set_use_underline(setting bool) {
	gtk_label_set_use_underline(l.widget, setting)
}

pub fn (l Label) set_single_line_mode(setting bool) {
	gtk_label_set_single_line_mode(l.widget, setting)
}

pub fn (l Label) set_angle(angle f64) {
	gtk_label_set_angle(l.widget, angle)
}

pub fn (l Label) get_current_uri() string {
	uri := gtk_label_get_current_uri(l.widget)
	return tos3(uri)
}

pub fn (l Label) set_track_visited_links(setting bool) {
	gtk_label_set_track_visited_links(l.widget, setting)
}

pub fn (l Label) get_track_visited_links() bool {
	return gtk_label_get_track_visited_links(l.widget)
}

pub fn (l &Label) get_gtk_widget() &Widget {
	return l.widget
}
