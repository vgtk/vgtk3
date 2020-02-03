module main

import gtk

fn main() {
	window := gtk.new_window()
	window.set_title('MessageDialog Demo')

	box := gtk.new_box(.horizontal, 6)
	window.add(box)

	button1 := gtk.new_button_with_label('Information')
	button1.on('clicked', on_info_clicked, &window)
	box.add(button1)

	button2 := gtk.new_button_with_label('Error')
	button2.on('clicked', on_err_clicked, &window)
	box.add(button2)

	button3 := gtk.new_button_with_label('Warning')
	button2.on('clicked', on_warn_clicked, &window)
	box.add(button3)

	button4 := gtk.new_button_with_label('Question')
	button4.on('clicked', on_question_clicked, &window)
	box.add(button4)

	window.on('destroy', on_window_destroy, &window)
	window.show_all()
	gtk.main()
}

fn on_info_clicked(button gtk.Button, data voidptr) {
	parent := &gtk.Window(data)
	dialog := gtk.new_message_dialog(parent, .modal, .info, .ok, 'This is an INFO MessageDialog')
	dialog.format_secondary_text('And this is the secondary text that explains things.')
	dialog.run()
	println('INFO dialog closed')
	dialog.destroy()
}

fn on_err_clicked(button gtk.Button, data voidptr) {
	parent := &gtk.Window(data)
	dialog := gtk.new_message_dialog(parent, .modal, .error, .cancel, 'This is an ERROR MessageDialog')
	dialog.format_secondary_text('And this is the secondary text that explains things.')
	dialog.run()
	println('ERROR dialog closed')
	dialog.destroy()
}

fn on_warn_clicked(button gtk.Button, data voidptr) {
	parent := &gtk.Window(data)
	dialog := gtk.new_message_dialog(parent, .modal, .warning, .ok_cancel, 'This is an WARNING MessageDialog')
	dialog.format_secondary_text('And this is the secondary text that explains things.')
	response := dialog.run()
	if response == .ok {
		println('WARN dialog closed by clicking OK button')
	} else if response == .cancel {
		println('WARN dialog closed by clicking CANCEL button')
	}
	dialog.destroy()
}

fn on_question_clicked(button gtk.Button, data voidptr) {
	parent := &gtk.Window(data)
	dialog := gtk.new_message_dialog(parent, .modal, .question, .yes_no, 'This is an QUESTION MessageDialog')
	dialog.format_secondary_text('And this is the secondary text that explains things.')
	response := dialog.run()
	if response == .yes {
		println('QUESTION dialog closed by clicking YES button')
	} else if response == .no {
		println('QUESTION dialog closed by clicking NO button')
	}
	dialog.destroy()
}

fn on_window_destroy(window gtk.Window, data voidptr) {
	gtk.main_quit()
}
