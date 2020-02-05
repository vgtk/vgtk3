module main

import gtk
import glib

struct EntryDemo {
mut:
	window       gtk.Window
	entry        gtk.Entry
	btn_editable gtk.CheckButton
	btn_visible  gtk.CheckButton
	btn_pulse    gtk.CheckButton
	btn_icon     gtk.CheckButton
	timeout_id   u32
}

fn new_entry_demo() EntryDemo {
	mut this := EntryDemo{}

	window := this.window = gtk.new_window()
	window.set_title('Entry Demo')

	vbox := gtk.new_box(.vertical, 6)
	window.add(vbox)

	entry := this.entry = gtk.new_entry()
	entry.set_text('Hello World')
	entry.on('changed', on_entry_text_changed, 0)
	vbox.pack_start(entry, true, true, 0)

	hbox := gtk.new_box(.horizontal, 6)
	vbox.pack_start(hbox, true, true, 0)

	btn_editable := this.btn_editable = gtk.new_check_button_with_label('Editable')
	btn_editable.on('toggled', on_btn_editable_toggled, this)
	hbox.pack_start(btn_editable, true, true, 0)

	btn_visible := this.btn_visible = gtk.new_check_button_with_label('Visible')
	btn_visible.on('toggled', on_btn_visible_toggled, this)
	hbox.pack_start(btn_visible, true, true, 0)

	btn_pulse := this.btn_pulse = gtk.new_check_button_with_label('Pulse')
	btn_pulse.on('toggled', on_btn_pulse_clicked, this)
	hbox.pack_start(btn_pulse, true, true, 0)

	btn_icon := this.btn_icon = gtk.new_check_button_with_label('Icon')
	btn_icon.on('toggled', on_btn_icon_clicked, this)
	hbox.pack_start(btn_icon, true, true, 0)

	return this
}

fn on_btn_editable_toggled(button gtk.CheckButton, data voidptr) {
	this := &EntryDemo(data)
	value := button.get_active()
	this.entry.set_editable(value)
}

fn on_btn_visible_toggled(button gtk.CheckButton, data voidptr) {
	this := &EntryDemo(data)
	value := button.get_active()
	this.entry.set_visibility(value)
}

fn do_pulse(data voidptr) bool {
	this := &EntryDemo(data)
	this.entry.progress_pulse()
	return true
}

fn on_btn_pulse_clicked(button gtk.CheckButton, data voidptr) {
	mut this := &EntryDemo(data)
	if button.get_active() {
		this.entry.set_progress_pulse_step(0.2)
		this.timeout_id = glib.timeout_add(u32(100), do_pulse, data)
	} else {
		glib.source_remove(this.timeout_id)
		this.timeout_id = u32(0)
		this.entry.set_progress_pulse_step(f32(0))
	}
}

fn on_entry_text_changed(entry gtk.Entry, data voidptr) {
	text := entry.get_text().trim(' ')
	fraction := f32(text.len) / 10.0
	if fraction <= 1 {
		entry.set_progress_fraction(fraction)
	}
}

fn on_btn_icon_clicked(button gtk.CheckButton, data voidptr) {
	this := &EntryDemo(data)
	icon_name := if button.get_active() {'system-search-symbolic' } else { '' }
	this.entry.set_icon_from_icon_name(.primary, icon_name)
}

fn main() {
	entry_demo := new_entry_demo()
	window := &entry_demo.window
	window.on('destroy', on_window_destroy, 0)
	window.show_all()
	gtk.main()
}

fn on_window_destroy(window gtk.Window, data voidptr) {
	gtk.main_quit()
}
