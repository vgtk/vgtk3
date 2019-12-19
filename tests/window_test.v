import gtk

fn test_window_title() {
	window := gtk.new_window()
	btn := gtk.new_button('test')
	window.add(btn)
	window.set_title('gtk window')
	assert window.get_title() == 'gtk window'
	window.show()
	gtk.main_quit()
}


// fn main_and_quit() {
// 	main_and_quit()
// }
