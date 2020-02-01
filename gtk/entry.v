module gtk

pub enum EntryIconPosition {
	primary
  	secondary
}

pub enum InputPurpose {
	free_form
	alpha
	digits
	number
	phone
	url
	email
	name
	password
	pin
}

pub enum InputHints {
	_none               = 0
	spellcheck          = 1
	no_spellcheck       = 2
	word_completion     = 4
	lowercase           = 8
	uppercase_chars     = 16
	uppercase_words     = 32
	uppercase_sentences = 64
	inhibit_osk         = 128
	vertical_writing    = 256
	emoji               = 512
	no_emoji            = 1024
}

pub struct Entry {
	c &GtkWidget
}

pub fn new_entry() Entry {
	return Entry{gtk_entry_new()}
}

pub fn (e Entry) set_text(text string) {
	gtk_entry_set_text(e.c, text.str)
}

pub fn (e Entry) get_text() string {
	return tos3(gtk_entry_get_text(e.c))
}

pub fn (e Entry) get_text_length() u16 {
	return gtk_entry_get_text_length(e.c)
}

// TODO: void gtk_entry_get_text_area (GtkEntry *entry, GdkRectangle *text_area)

pub fn (e Entry) set_visibility(visible bool) {
	gtk_entry_set_visibility(e.c, visible)
}

pub fn (e Entry) set_invisible_char(ch rune) {
	gtk_entry_set_invisible_char(e.c, ch)
}

pub fn (e Entry) unset_invisible_char() {
	gtk_entry_unset_invisible_char(e.c)
}

pub fn (e Entry) set_max_length(max int) {
	gtk_entry_set_max_length(e.c, max)
}

pub fn (e Entry) get_activates_default() bool {
	return gtk_entry_get_activates_default(e.c)
}

pub fn (e Entry) gtk_entry_get_has_frame() bool {
	return gtk_entry_get_has_frame(e.c)
}

// WARNING: Has been deprecated since version 3.4
// TODO: const GtkBorder * gtk_entry_get_inner_border (GtkEntry *entry) 

pub fn (e Entry) get_width_chars() int {
	return gtk_entry_get_width_chars(e.c)
}

pub fn (e Entry) get_max_width_chars() int {
	return gtk_entry_get_max_width_chars(e.c)
}

pub fn (e Entry) set_activates_default(setting bool) {
	gtk_entry_set_activates_default(e.c, setting)
}

pub fn (e Entry) set_has_frame(setting bool) {
	gtk_entry_set_has_frame(e.c, setting)
}

// TODO: void gtk_entry_set_inner_border (GtkEntry *entry, const GtkBorder *border)

pub fn (e Entry) set_width_chars(n_chars int) {
	gtk_entry_set_width_chars(e.c, n_chars)
}

pub fn (e Entry) set_max_width_chars(n_chars int) {
	gtk_entry_set_max_width_chars(e.c, n_chars)
}

pub fn (e Entry) get_invisible_char() rune {
	return gtk_entry_get_invisible_char(e.c)
}

pub fn (e Entry) set_alignment(xalign f32) {
	gtk_entry_set_alignment(e.c, xalign)
}

pub fn (e Entry) get_alignment() f32 {
	return gtk_entry_get_alignment(e.c)
}

pub fn (e Entry) set_placeholder_text(text string) {
	gtk_entry_set_placeholder_text(e.c, text.str)
}

pub fn (e Entry) get_placeholder_text() string {
	return tos3(gtk_entry_get_placeholder_text(e.c))
}

pub fn (e Entry) set_overwrite_mode(setting bool) {
	gtk_entry_set_overwrite_mode(e.c, setting)
}

pub fn (e Entry) get_overwrite_mode() bool {
	return gtk_entry_get_overwrite_mode(e.c)
}

/* TODO: PangoLayout * gtk_entry_get_layout (GtkEntry *entry) */

pub fn (e Entry) get_layout_offsets() (int, int) {
	x := 0
	y := 0
	gtk_entry_get_layout_offsets(e.c, &x, &y)
	return x, y
}

pub fn (e Entry) layout_index_to_text_index(layout_index int) int {
	return gtk_entry_layout_index_to_text_index(e.c, layout_index)
}

pub fn (e Entry) index_to_layout_index(layout_index int) int {
	return gtk_entry_text_index_to_layout_index(e.c, layout_index)
}

// TODO: void gtk_entry_set_attributes (GtkEntry *entry, PangoAttrList *attrs)

// TODO: PangoAttrList * gtk_entry_get_attributes (GtkEntry *entry)

pub fn (e Entry) get_max_length() int {
	return gtk_entry_get_max_length(e.c)
}

pub fn (e Entry) get_visibility() bool {
	return gtk_entry_get_visibility(e.c)
}

// TODO: void gtk_entry_set_completion (GtkEntry *entry, GtkEntryCompletion *completion)

// TODO: GtkEntryCompletion * gtk_entry_get_completion (GtkEntry *entry)

// TODO: void gtk_entry_set_cursor_hadjustment (GtkEntry *entry, GtkAdjustment *adjustment)

// TODO: GtkAdjustment * gtk_entry_get_cursor_hadjustment (GtkEntry *entry)

pub fn (e Entry) set_progress_fraction(fraction f32) {
	gtk_entry_set_progress_fraction(e.c, fraction)
}

pub fn (e Entry) get_progress_fraction() f32 {
	return gtk_entry_get_progress_fraction(e.c)
}

pub fn (e Entry) set_progress_pulse_step(fraction f32) {
	gtk_entry_set_progress_pulse_step(e.c, fraction)
}

pub fn (e Entry) get_progress_pulse_step() f32 {
	return gtk_entry_get_progress_pulse_step(e.c)
}

pub fn (e Entry) progress_pulse() {
	gtk_entry_progress_pulse(e.c)
}

// TODO: gboolean gtk_entry_im_context_filter_keypress (GtkEntry *entry, GdkEventKey *event)

pub fn (e Entry) reset_im_context() {
	gtk_entry_reset_im_context(e.c)
}

// TODO: PangoTabArray * gtk_entry_get_tabs (GtkEntry *entry)

// TODO: void gtk_entry_set_tabs (GtkEntry *entry, PangoTabArray *tabs)

pub fn (e Entry) set_icon_from_icon_name(icon_pos EntryIconPosition, icon_name string) {
	gtk_entry_set_icon_from_icon_name(e.c, icon_pos, icon_name.str)
}

// TODO: void gtk_entry_set_icon_from_gicon (GtkEntry *entry, GtkEntryIconPosition icon_pos, GIcon *icon)

pub fn (e Entry) get_icon_storage_type(icon_pos EntryIconPosition) ImageType {
	return ImageType(gtk_entry_get_icon_storage_type(e.c, icon_pos))
}

// TODO: GdkPixbuf * gtk_entry_get_icon_pixbuf (GtkEntry *entry, GtkEntryIconPosition icon_pos)

pub fn (e Entry) get_icon_name(icon_pos EntryIconPosition) string {
	return tos3(gtk_entry_get_icon_name(e.c, icon_pos))
}

// TODO: GIcon * gtk_entry_get_icon_gicon (GtkEntry *entry, GtkEntryIconPosition icon_pos)

pub fn (e Entry) set_icon_activatable(icon_pos EntryIconPosition, activatable bool) {
	gtk_entry_set_icon_activatable(e.c, icon_pos, activatable)
}

pub fn (e Entry) get_icon_activatable(icon_pos EntryIconPosition) bool {
	return gtk_entry_get_icon_activatable(e.c, icon_pos)
}

pub fn (e Entry) set_icon_sensitive(icon_pos EntryIconPosition, sensitive bool) {
	gtk_entry_set_icon_sensitive(e.c, icon_pos, sensitive)
}

pub fn (e Entry) get_icon_sensitive(icon_pos EntryIconPosition) bool {
	return gtk_entry_get_icon_sensitive(e.c, icon_pos)
}

pub fn (e Entry) get_icon_at_pos(x, y int) int {
	return gtk_entry_get_icon_at_pos(e.c, x, y)
}

pub fn (e Entry) set_icon_tooltip_text(icon_pos EntryIconPosition, tooltip string) {
	if tooltip == '' {
		gtk_entry_set_icon_tooltip_text(e.c, icon_pos, 0)
	}
	gtk_entry_set_icon_tooltip_text(e.c, icon_pos, tooltip.str)
}

pub fn (e Entry) get_icon_tooltip_text(icon_pos EntryIconPosition) string {
	res := gtk_entry_get_icon_tooltip_text(e.c, icon_pos)
	return tos3(res)
}

pub fn (e Entry) set_icon_tooltip_markup(icon_pos EntryIconPosition, tooltip string) {
	if tooltip == '' {
		gtk_entry_set_icon_tooltip_markup(e.c, icon_pos, 0)
	}
	gtk_entry_set_icon_tooltip_markup(e.c, icon_pos, tooltip.str)
}

pub fn (e Entry) get_icon_tooltip_markup(icon_pos EntryIconPosition) string {
	res := gtk_entry_get_icon_tooltip_markup(e.c, icon_pos)
	return tos3(res)
}

// TODO: void gtk_entry_set_icon_drag_source (GtkEntry *entry, GtkEntryIconPosition icon_pos, GtkTargetList *target_list, GdkDragAction actions)

pub fn (e Entry) get_current_icon_drag_source() int {
	return gtk_entry_get_current_icon_drag_source(e.c)
}

// TODO void gtk_entry_get_icon_area (GtkEntry *entry, GtkEntryIconPosition icon_pos, GdkRectangle *icon_area)

pub fn (e Entry) set_input_purpose(purpose InputPurpose) {
	gtk_entry_set_input_purpose(e.c, purpose)
}

pub fn (e Entry) get_input_purpose() InputPurpose {
	return InputPurpose(gtk_entry_get_input_purpose(e.c))
}

pub fn (e Entry) set_input_hints(hints InputHints) {
	gtk_entry_set_input_hints(e.c, hints)
}

pub fn (e Entry) get_input_hints() InputHints {
	return InputHints(gtk_entry_get_input_hints(e.c))
}

pub fn (e Entry) grab_focus_without_selecting() {
	gtk_entry_grab_focus_without_selecting(e.c)
}

/* IMPLEMENTING EDITABLE */

pub fn (e Entry) set_editable(setting bool) {
	gtk_editable_set_editable(e.c, setting)
}

pub fn (e Entry) set_direction(direction TextDirection) {
	gtk_widget_set_direction(e.c, direction)
}

/* INHERITED FROM WIDGET */
pub fn (e Entry) show() {
	gtk_widget_show(e.c)
}

pub fn (e Entry) show_all() {
	gtk_widget_show_all(e.c)
}

/* IMPLEMENTING Widgeter */

pub fn (e &Entry) get_gtk_widget() &GtkWidget {
	return e.c
}

/* CUSTOM API's */
pub fn (e &Entry) on(event_name string, handler fn(entry Entry, _data voidptr), data voidptr) int {
	return g_signal_connect(e.c, event_name.str, handler, data)
}
