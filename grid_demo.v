module main

import gtk

fn main() {
	window := gtk.new_window()
	window.set_title('Grid Example')

	grid := gtk.new_grid()
	window.add(grid)

	button1 := gtk.new_button_with_label('Button1')
	button2 := gtk.new_button_with_label('Button2')
	button3 := gtk.new_button_with_label('button3')
	button4 := gtk.new_button_with_label('button4')
	button5 := gtk.new_button_with_label('button5')
	button6 := gtk.new_button_with_label('button6')

	grid.add(button1)
	grid.attach(button2, 1, 0, 2, 1)
	grid.attach_next_to(button3, button1, .bottom, 1, 2)
	grid.attach_next_to(button4, button3, .right, 2, 1)
	grid.attach(button5, 1, 2, 1, 1)
	grid.attach_next_to(button6, button5, .right, 1, 1)

	window.on('destroy', on_destroy, 0)
	window.show_all()
	gtk.main()
}

fn on_destroy(window gtk.Window, data voidptr) {
	gtk.main_quit()
}
