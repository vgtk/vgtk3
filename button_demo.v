module main

import gtk

fn main() {
	window := gtk.new_window()
	window.set_title('Button Demo')
	window.set_border_width(10)

	hbox := gtk.new_hbox(6)
	window.add(hbox)

	mut button := gtk.new_button_with_label('Click me')
	button.on('clicked', on_clickme_clicked, 0)
	hbox.pack_start(button, true, true, 0)

	button = gtk.new_button_with_mnemonic('_Open')
	button.on('clicked', on_open_clicked, 0)
	hbox.pack_start(button, true, true, 0)

	button = gtk.new_button_with_mnemonic('_Close')
	button.on('clicked', on_close_clicked, 0)
	hbox.pack_start(button, true, true, 0)

	window.on('destroy', on_destroy, 0)
	window.show_all()

	gtk.main()
}

fn on_clickme_clicked(button gtk.Button, data voidptr) {
	println('Click me button was clicked')
}

fn on_open_clicked(button gtk.Button, data voidptr) {
	println('Open button was clicked')
}

fn on_close_clicked(button gtk.Button, data voidptr) {
	println('Close button was clicked')
	gtk.main_quit()
}

fn on_destroy(window gtk.Window, data voidptr) {
	gtk.main_quit()
}
