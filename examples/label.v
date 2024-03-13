module main

import gtk

fn main() {
	window := gtk.new_window()
	window.set_title('Label Example')
	window.set_default_size(500, 500)
	window.set_border_width(10)

	hbox := gtk.new_hbox(10)
	vbox_left := gtk.new_vbox(10)
	vbox_right := gtk.new_vbox(10)

	hbox.pack_start(vbox_left, true, true, 0)
	hbox.pack_start(vbox_right, true, true, 0)

	mut label := gtk.new_label('This is a normal label')
	vbox_left.pack_start(label, true, true, 0)

	label = gtk.new_label('This is a left-justified label.\nWith multiple lines.')
	label.set_justify(.left)
	vbox_left.pack_start(label, true, true, 0)

	label = gtk.new_empty_label()
	label.set_text('This is a right-justified label.\nWith multiple lines.')
	label.set_justify(.right)
	vbox_left.pack_start(label, true, true, 0)

	label = gtk.new_label('This is an example of a line-wrapped label.  It ' +
		'should not be taking up the entire             ' +
		'width allocated to it, but automatically ' + 'wraps the words to fit.\n' +
		'     It supports multiple paragraphs correctly, ' + 'and  correctly   adds ' +
		'many          extra  spaces. ')
	label.set_line_wrap(true)
	vbox_right.pack_start(label, true, true, 0)

	label = gtk.new_label('This is an example of a line-wrapped, filled label. ' +
		'It should be taking ' + 'up the entire              width allocated to it.  ' +
		'Here is a sentence to prove ' + 'my point.  Here is another sentence. ' +
		'Here comes the sun, do de do de do.\n' + '    This is a new paragraph.\n' +
		'    This is another newer, longer, better ' + 'paragraph.  It is coming to an end, ' +
		'unfortunately.')
	label.set_line_wrap(true)
	label.set_justify(.fill)
	vbox_right.pack_start(label, true, true, 0)

	label = gtk.new_empty_label()
	label.set_markup('Text can be <small>small</small>, <big>big</big>, ' +
		'<b>bold</b>, <i>italic</i> and even point to ' +
		"somewhere in the <a href='http://www.gtk.org'" +
		"title='Click to find out more'>internets</a>.")
	label.set_line_wrap(true)
	vbox_left.pack_start(label, true, true, 0)

	label = gtk.new_label_with_mnemonic('_Press Alt + P to select button to the right')
	vbox_left.pack_start(label, true, true, 0)
	label.set_selectable(true)

	button := gtk.new_button_with_label('Click at your own risk')
	label.set_mnemonic_widget(button)
	vbox_right.pack_start(button, true, true, 0)

	window.add(hbox)
	window.on('destroy', on_destroy, window)
	window.show_all()

	gtk.main()
}

fn on_destroy(window gtk.Window, data voidptr) {
	gtk.main_quit()
}
