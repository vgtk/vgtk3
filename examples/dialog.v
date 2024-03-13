module main

import gtk

fn main() {
	window := gtk.new_window()
	window.set_title('Main window')
	window.set_default_size(500, 250)
	window.on('destroy', on_window_destroy, unsafe { nil })

	dialog := gtk.new_dialog_from_parent('Dialog', window, .modal)
	dialog.set_default_size(150, 150)
	dialog.add_button('_CANCEL', .cancel)
	dialog.add_button('_OK', .yes)

	button := gtk.new_button_with_label('Show Dialog')
	button.on('clicked', on_btn_show_dialog_clicked, &dialog)

	window.add(button)

	window.show_all()
	gtk.main()
}

fn on_btn_show_dialog_clicked(button gtk.Button, data voidptr) {
	dialog := &gtk.Dialog(data)

	label := gtk.new_label('Are you sure want to quit?')
	box := dialog.get_content_area()
	box.add(label)

	label.show()
	res := dialog.run()

	if res == .yes {
		println('Yes')
		gtk.main_quit()
	} else {
		println('Cancel')
		dialog.hide()
	}
}

fn on_window_destroy(window gtk.Window, data voidptr) {
	gtk.main_quit()
}
