module main

import gtk

fn main() {
	window := gtk.new_window()
	window.set_title('Box Example')
	window.set_default_size(500, 50)

	box := gtk.new_box(.horizontal, 6)
	window.add(box)

	button1 := gtk.new_button_with_label('Hello')
	button1.on('clicked', on_button1_clicked, unsafe { nil })
	box.pack_start(button1, true, true, 0)

	button2 := gtk.new_button_with_label('Goodbye')
	button2.on('clicked', on_button2_clicked, unsafe { nil })
	box.pack_start(button2, false, false, 0)

	window.on('destroy', on_window_destroy, unsafe { nil })
	window.show_all()
	gtk.main()
}

fn on_button1_clicked(button1 gtk.Button, data voidptr) {
	println('Hello...')
}

fn on_button2_clicked(button2 gtk.Button, data voidptr) {
	println('Goodbye...')
}

fn on_window_destroy(window gtk.Window, data voidptr) {
	gtk.main_quit()
}
