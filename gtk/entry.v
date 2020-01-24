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
	@none               = 0
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
	widget &GtkWidget
}

pub fn new_entry() Entry {
	return Entry{gtk_entry_new()}
}

pub fn (e Entry) set_text(text string) {
	gtk_entry_set_text(e.widget, text.str)
}

pub fn (e Entry) get_text() string {
	return tos3(gtk_entry_get_text(e.widget))
}

pub fn (e Entry) get_text_length() u16 {
	return gtk_entry_get_text_length(e.widget)
}

// TODO: void gtk_entry_get_text_area (GtkEntry *entry, GdkRectangle *text_area)

pub fn (e Entry) set_visibility(visible bool) {
	gtk_entry_set_visibility(e.widget, visible)
}

pub fn (e Entry) set_invisible_char(ch rune) {
	gtk_entry_set_invisible_char(e.widget, ch)
}

pub fn (e Entry) unset_invisible_char() {
	gtk_entry_unset_invisible_char(e.widget)
}

pub fn (e Entry) set_max_length(max int) {
	gtk_entry_set_max_length(e.widget, max)
}

pub fn (e Entry) get_activates_default() bool {
	return gtk_entry_get_activates_default(e.widget)
}

pub fn (e Entry) gtk_entry_get_has_frame() bool {
	return gtk_entry_get_has_frame(e.widget)
}

// WARNING: Has been deprecated since version 3.4
// TODO: const GtkBorder * gtk_entry_get_inner_border (GtkEntry *entry) 

pub fn (e Entry) get_width_chars() int {
	return gtk_entry_get_width_chars(e.widget)
}

pub fn (e Entry) get_max_width_chars() int {
	return gtk_entry_get_max_width_chars(e.widget)
}

pub fn (e Entry) set_activates_default(setting bool) {
	gtk_entry_set_activates_default(e.widget, setting)
}

pub fn (e Entry) set_has_frame(setting bool) {
	gtk_entry_set_has_frame(e.widget, setting)
}

// TODO: void gtk_entry_set_inner_border (GtkEntry *entry, const GtkBorder *border)

pub fn (e Entry) set_width_chars(n_chars int) {
	gtk_entry_set_width_chars(e.widget, n_chars)
}

pub fn (e Entry) set_max_width_chars(n_chars int) {
	gtk_entry_set_max_width_chars(e.widget, n_chars)
}

pub fn (e Entry) get_invisible_char() rune {
	return gtk_entry_get_invisible_char(e.widget)
}

pub fn (e Entry) set_alignment(xalign f32) {
	gtk_entry_set_alignment(e.widget, xalign)
}

pub fn (e Entry) get_alignment() f32 {
	return gtk_entry_get_alignment(e.widget)
}

pub fn (e Entry) set_placeholder_text(text string) {
	gtk_entry_set_placeholder_text(e.widget, text.str)
}

pub fn (e Entry) get_placeholder_text() string {
	return tos3(gtk_entry_get_placeholder_text(e.widget))
}

pub fn (e Entry) set_overwrite_mode(setting bool) {
	gtk_entry_set_overwrite_mode(e.widget, setting)
}

pub fn (e Entry) get_overwrite_mode() bool {
	return gtk_entry_get_overwrite_mode(e.widget)
}

/* TODO: PangoLayout * gtk_entry_get_layout (GtkEntry *entry) */

pub fn (e Entry) get_layout_offsets() (int, int) {
	x := 0
	y := 0
	gtk_entry_get_layout_offsets(e.widget, &x, &y)
	return x, y
}

pub fn (e Entry) layout_index_to_text_index(layout_index int) int {
	return gtk_entry_layout_index_to_text_index(e.widget, layout_index)
}

pub fn (e Entry) index_to_layout_index(layout_index int) int {
	return gtk_entry_text_index_to_layout_index(e.widget, layout_index)
}

// TODO: void gtk_entry_set_attributes (GtkEntry *entry, PangoAttrList *attrs)

// TODO: PangoAttrList * gtk_entry_get_attributes (GtkEntry *entry)

pub fn (e Entry) get_max_length() int {
	return gtk_entry_get_max_length(e.widget)
}

pub fn (e Entry) get_visibility() bool {
	return gtk_entry_get_visibility(e.widget)
}

// TODO: void gtk_entry_set_completion (GtkEntry *entry, GtkEntryCompletion *completion)

// TODO: GtkEntryCompletion * gtk_entry_get_completion (GtkEntry *entry)

// TODO: void gtk_entry_set_cursor_hadjustment (GtkEntry *entry, GtkAdjustment *adjustment)

// TODO: GtkAdjustment * gtk_entry_get_cursor_hadjustment (GtkEntry *entry)

pub fn (e Entry) set_progress_fraction(fraction f32) {
	gtk_entry_set_progress_fraction(e.widget, fraction)
}

pub fn (e Entry) get_progress_fraction() f32 {
	return gtk_entry_get_progress_fraction(e.widget)
}

pub fn (e Entry) set_progress_pulse_step(fraction f32) {
	gtk_entry_set_progress_pulse_step(e.widget, fraction)
}

pub fn (e Entry) get_progress_pulse_step() f32 {
	return gtk_entry_get_progress_pulse_step(e.widget)
}

pub fn (e Entry) progress_pulse() {
	gtk_entry_progress_pulse(e.widget)
}

// TODO: gboolean gtk_entry_im_context_filter_keypress (GtkEntry *entry, GdkEventKey *event)

pub fn (e Entry) reset_im_context() {
	gtk_entry_reset_im_context(e.widget)
}

// TODO: PangoTabArray * gtk_entry_get_tabs (GtkEntry *entry)

// TODO: void gtk_entry_set_tabs (GtkEntry *entry, PangoTabArray *tabs)

pub fn (e Entry) set_icon_from_icon_name(icon_pos EntryIconPosition, icon_name string) {
	gtk_entry_set_icon_from_icon_name(e.widget, icon_pos, icon_name.str)
}

// TODO: void gtk_entry_set_icon_from_gicon (GtkEntry *entry, GtkEntryIconPosition icon_pos, GIcon *icon)

pub fn (e Entry) get_icon_storage_type(icon_pos EntryIconPosition) ImageType {
	return ImageType(gtk_entry_get_icon_storage_type(e.widget, icon_pos))
}

// TODO: GdkPixbuf * gtk_entry_get_icon_pixbuf (GtkEntry *entry, GtkEntryIconPosition icon_pos)

pub fn (e Entry) get_icon_name(icon_pos EntryIconPosition) string {
	return tos3(gtk_entry_get_icon_name(e.widget, icon_pos))
}

// TODO: GIcon * gtk_entry_get_icon_gicon (GtkEntry *entry, GtkEntryIconPosition icon_pos)

pub fn (e Entry) set_icon_activatable(icon_pos EntryIconPosition, activatable bool) {
	gtk_entry_set_icon_activatable(e.widget, icon_pos, activatable)
}

pub fn (e Entry) get_icon_activatable(icon_pos EntryIconPosition) bool {
	return gtk_entry_get_icon_activatable(e.widget, icon_pos)
}

pub fn (e Entry) set_icon_sensitive(icon_pos EntryIconPosition, sensitive bool) {
	gtk_entry_set_icon_sensitive(e.widget, icon_pos, sensitive)
}

pub fn (e Entry) get_icon_sensitive(icon_pos EntryIconPosition) bool {
	return gtk_entry_get_icon_sensitive(e.widget, icon_pos)
}

pub fn (e Entry) get_icon_at_pos(x, y int) int {
	return gtk_entry_get_icon_at_pos(e.widget, x, y)
}

pub fn (e Entry) set_icon_tooltip_text(icon_pos EntryIconPosition, tooltip string) {
	if tooltip == '' {
		gtk_entry_set_icon_tooltip_text(e.widget, icon_pos, 0)
	}
	gtk_entry_set_icon_tooltip_text(e.widget, icon_pos, tooltip.str)
}

pub fn (e Entry) get_icon_tooltip_text(icon_pos EntryIconPosition) string {
	res := gtk_entry_get_icon_tooltip_text(e.widget, icon_pos)
	defer { free(&res) }
	return tos3(res)
}

pub fn (e Entry) set_icon_tooltip_markup(icon_pos EntryIconPosition, tooltip string) {
	if tooltip == '' {
		gtk_entry_set_icon_tooltip_markup(e.widget, icon_pos, 0)
	}
	gtk_entry_set_icon_tooltip_markup(e.widget, icon_pos, tooltip.str)
}

pub fn (e Entry) get_icon_tooltip_markup(icon_pos EntryIconPosition) string {
	res := gtk_entry_get_icon_tooltip_markup(e.widget, icon_pos)
	defer { free(&res) }
	return tos3(res)
}

// TODO: void gtk_entry_set_icon_drag_source (GtkEntry *entry, GtkEntryIconPosition icon_pos, GtkTargetList *target_list, GdkDragAction actions)

pub fn (e Entry) get_current_icon_drag_source() int {
	return gtk_entry_get_current_icon_drag_source(e.widget)
}

// TODO void gtk_entry_get_icon_area (GtkEntry *entry, GtkEntryIconPosition icon_pos, GdkRectangle *icon_area)

pub fn (e Entry) set_input_purpose(purpose InputPurpose) {
	gtk_entry_set_input_purpose(e.widget, purpose)
}

pub fn (e Entry) get_input_purpose() InputPurpose {
	return InputPurpose(gtk_entry_get_input_purpose(e.widget))
}

pub fn (e Entry) set_input_hints(hints InputHints) {
	gtk_entry_set_input_hints(e.widget, hints)
}

pub fn (e Entry) get_input_hints() InputHints {
	return InputHints(gtk_entry_get_input_hints(e.widget))
}

pub fn (e Entry) grab_focus_without_selecting() {
	gtk_entry_grab_focus_without_selecting(e.widget)
}

/* IMPLEMENTING EDITABLE */

pub fn (e Entry) set_editable(setting bool) {
	gtk_editable_set_editable(e.widget, setting)
}

pub fn (e Entry) set_direction(direction TextDirection) {
	gtk_widget_set_direction(e.widget, direction)
}

/* INHERITED FROM WIDGET */
pub fn (e Entry) show() {
	gtk_widget_show(e.widget)
}

pub fn (e Entry) show_all() {
	gtk_widget_show_all(e.widget)
}

/* IMPLEMENTING Widgeter */

pub fn (e &Entry) get_gtk_widget() &GtkWidget {
	return e.widget
}

/* CUSTOM API's */
pub fn (e &Entry) on(event_name string, handler fn(entry Entry, _data voidptr), data voidptr) int {
	return g_signal_connect(e.widget, event_name.str, handler, data)
}
