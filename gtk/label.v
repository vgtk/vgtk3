module gtk

pub struct Label {
	c &GtkWidget
}

pub fn new_label(label string) Label {
	return Label{gtk_label_new(label.str)}
}

pub fn new_empty_label() Label {
	return Label{gtk_label_new(0)}
}

pub fn (l Label) set_text(label string) {
	gtk_label_set_text(l.c, label.str)
}

// TODO: gtk_label_set_attributes()

pub fn (l Label) set_markup(str string) {
	gtk_label_set_markup(l.c, str.str)
}

pub fn (l Label) set_markup_with_mnemonic(str string) {
	gtk_label_set_markup_with_mnemonic(l.c, str.str)
}

pub fn (l Label) set_pattern(pattern string) {
	gtk_label_set_pattern(l.c, pattern.str)
}

pub fn (l Label) set_justify(jtype Justify) {
	gtk_label_set_justify(l.c, jtype)
}

pub fn (l Label) set_xalign(xalign f32) {
	if xalign > 1 || xalign < 0 {
		panic('vgtk3.gtk.label.set_xalign: val must between 0 and 1')
	}
	gtk_label_set_xalign(l.c, xalign)
}

pub fn (l Label) set_yalign(yalign f32) {
	if yalign > 1 || yalign < 0 {
		panic('vgtk3.gtk.label.set_yalign: val must between 0 and 1')
	}
	gtk_label_set_yalign(l.c, yalign)
}

// TODO: gtk_label_set_ellipsize()

pub fn (l Label) set_width_chars(n_chars int) {
	gtk_label_set_width_chars(l.c, n_chars)
}

pub fn (l Label) set_max_width_chars(n_chars int) {
	gtk_label_set_max_width_chars(l.c, n_chars)
}

pub fn (l Label) set_line_wrap(setting bool) {
	gtk_label_set_line_wrap(l.c, setting)
}

// TODO: gtk_label_set_line_wrap_mode()

pub fn (l Label) set_lines(lines int) {
	gtk_label_set_lines(l.c, lines)
}

pub fn (l Label) get_layout_offsets() (int, int) {
	x := 0
	y := 0
	gtk_label_get_layout_offsets(l.c, &x, &y)
	return x, y
}

pub fn (l Label) get_mnemonic_keyval() u32 {
	return gtk_label_get_mnemonic_keyval(l.c)
}

pub fn (l Label) get_selectable() bool {
	return gtk_label_get_selectable(l.c)
}

pub fn (l Label) get_text() string {
	return tos3(gtk_label_get_text(l.c))
}

pub fn new_label_with_mnemonic(label string) Label {
	return Label{gtk_label_new_with_mnemonic(label.str)}
}

pub fn (l Label) select_region(start_offset int, end_offset int) {
	gtk_label_select_region(l.c, start_offset, end_offset)
}

pub fn (l Label) set_mnemonic_widget(widget Widgeter) {
	wgt := widget.get_gtk_widget()
	gtk_label_set_mnemonic_widget(l.c, wgt)
}

pub fn (l Label) set_selectable(setting bool) {
	gtk_label_set_selectable(l.c, setting)
}

pub fn (l Label) set_text_with_mnemonic(str string) {
	gtk_label_set_text_with_mnemonic(l.c, str.str)
}

pub fn (l Label) get_justify() Justify {
	return Justify(gtk_label_get_justify(l.c))
}

pub fn (l Label) get_xalign() f32 {
	return gtk_label_get_xalign(l.c)
}

pub fn (l Label) get_yalign() f32 {
	return gtk_label_get_yalign(l.c)
}

/* TODO: PangoEllipsizeMode gtk_label_get_ellipsize (GtkLabel *label) */

pub fn (l Label) get_width_chars() int {
	return gtk_label_get_width_chars(l.c)
}

pub fn (l Label) get_max_width_chars() int {
	return gtk_label_get_max_width_chars(l.c)
}

pub fn (l Label) get_label() string {
	str := gtk_label_get_label(l.c)
	return tos3(str)
}

/* TODO: PangoLayout * gtk_label_get_layout (GtkLabel *label) */

pub fn (l Label) get_line_wrap() bool {
	return gtk_label_get_line_wrap(l.c)
}

/* TODO: PangoWrapMode gtk_label_get_line_wrap_mode (GtkLabel *label) */

pub fn (l Label) get_lines() int {
	return gtk_label_get_lines(l.c)
}

pub fn (l Label) get_mnemonic_widget() &GtkWidget {
	return gtk_label_get_mnemonic_widget(l.c)
}

pub fn (l Label) get_selection_bounds() (int, int) {
	start := 0
	end := 0
	gtk_label_get_selection_bounds(l.c, &start, &end)
	return start, end
}

pub fn (l Label) get_use_markup() bool {
	return gtk_label_get_use_markup(l.c)
}

pub fn (l Label) get_use_underline() bool {
	return gtk_label_get_use_underline(l.c)
}

pub fn (l Label) get_single_line_mode() bool {
	return gtk_label_get_single_line_mode(l.c)
}

pub fn (l Label) get_angle() f64 {
	return gtk_label_get_angle(l.c)
}

pub fn (l Label) set_label(str string) {
	gtk_label_set_label(l.c, str.str)
}

pub fn (l Label) set_use_markup(setting bool) {
	gtk_label_set_use_markup(l.c, setting)
}

pub fn (l Label) set_use_underline(setting bool) {
	gtk_label_set_use_underline(l.c, setting)
}

pub fn (l Label) set_single_line_mode(setting bool) {
	gtk_label_set_single_line_mode(l.c, setting)
}

pub fn (l Label) set_angle(angle f64) {
	gtk_label_set_angle(l.c, angle)
}

pub fn (l Label) get_current_uri() string {
	return tos3(gtk_label_get_current_uri(l.c))
}

pub fn (l Label) set_track_visited_links(setting bool) {
	gtk_label_set_track_visited_links(l.c, setting)
}

pub fn (l Label) get_track_visited_links() bool {
	return gtk_label_get_track_visited_links(l.c)
}

pub fn (l &Label) get_gtk_widget() &GtkWidget {
	return l.c
}

/* IMPLEMENTING Widget */

pub fn (l Label) show() {
	gtk_widget_show(l.c)
}
