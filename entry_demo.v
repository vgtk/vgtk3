module main

import gtk

struct EntryDemo {
mut:
	window       gtk.Window
	entry        gtk.Entry
	btn_editable gtk.Button
	btn_visible  gtk.Button
	btn_pulse    gtk.Button
	btn_icon     gtk.Button
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

	// TODO: Using CheckButton instead
	btn_editable := this.btn_editable = gtk.new_button_with_label('Editable')
	btn_editable.on('clicked', on_btn_editable_clicked, this)
	hbox.pack_start(btn_editable, true, true, 0)

	// TODO: Using CheckButton instead
	btn_visible := this.btn_visible = gtk.new_button_with_label('Visible')
	btn_visible.on('clicked', on_btn_visible_clicked, this)
	hbox.pack_start(btn_visible, true, true, 0)

	// TODO: Using CheckButton instead
	btn_pulse := this.btn_pulse = gtk.new_button_with_label('Pulse')
	btn_pulse.on('clicked', on_btn_pulse_clicked, this)
	hbox.pack_start(btn_pulse, true, true, 0)

	// TODO: Using CheckButton instead
	btn_icon := this.btn_icon = gtk.new_button_with_label('No icon')
	btn_icon.on('clicked', on_btn_icon_clicked, this)
	hbox.pack_start(btn_icon, true, true, 0)

	return this
}

fn on_btn_editable_clicked(button gtk.Button, data voidptr) {
	this := &EntryDemo(data)
	value := button.get_label()
	cond := value == 'Editable'
	this.entry.set_editable(!cond)
	if cond {
		button.set_label('Not editable')
	} else {
		button.set_label('Editable')
	}
}

fn on_btn_visible_clicked(button gtk.Button, data voidptr) {
	this := &EntryDemo(data)
	value := button.get_label()
	cond := value == 'Visible'
	this.entry.set_visibility(!cond)
	if cond {
		button.set_label('Not visible')
	} else {
		button.set_label('Visible')
	}
}

fn on_btn_pulse_clicked(button gtk.Button, data voidptr) {
	this := &EntryDemo(data)
	this.entry.progress_pulse()
}

fn on_entry_text_changed(entry gtk.Entry, data voidptr) {
	text := entry.get_text().trim(' ')
	fraction := f32(text.len) / 10.0
	if fraction <= 1 {
		entry.set_progress_fraction(fraction)
	}
}

fn on_btn_icon_clicked(button gtk.Button, data voidptr) {
	this := &EntryDemo(data)
	value := button.get_label()
	cond := value == 'Icon'
	icon_name := if cond { '' } else { 'system-search-symbolic' }
	this.entry.set_icon_from_icon_name(.primary, icon_name)
	if cond {
		button.set_label('No icon')
	} else {
		button.set_label('Icon')
	}
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
