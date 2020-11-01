module main

import gtk

fn btn_clicked(btn gtk.Button, data voidptr) {
	if btn.get_label() == 'VGTK3 is ..' {
		btn.set_label('VGTK3 is awesome!')
	} else {
		btn.set_label('VGTK3 is ..')
	}
}

fn menu_exit(mi gtk.MenuItem, data voidptr) {
	gtk.main_quit()
}

fn alert_clicked(btn gtk.Button, data voidptr) {
	btn.set_label('All Fine!')
}

fn win_destroy(win gtk.Window, data voidptr) {
	gtk.main_quit() // necessary as gtk won't exit itself when window is destroyed.
}


fn main() {
	window := gtk.new_window()
	vbox := gtk.new_vbox(20)
	vbox.set_halign(.fill)
	btn := gtk.new_button_with_label('VGTK3 is ..')
	btn2 := gtk.new_button_with_label('Im useless!')
	alert := gtk.new_button_with_label('Alert!')

	bar := gtk.new_menu_bar()

	menu := gtk.new_menu()
	file_me := gtk.new_menu_item_with_label('File')
	file_me.set_submenu(menu)

	about := gtk.new_menu_item_with_label('About')
	quit := gtk.new_menu_item_with_label('Quit')
	menu.append(gtk.new_menu_item_with_label('File'))
	menu.append(about)
	menu.append(gtk.new_separator_menu_item())
	menu.append(quit)
	bar.append(file_me)

	hbox := gtk.new_hbox(20)
	hbox.set_halign(.end)
	entry := gtk.new_entry()

	btn.set_size(200, 100)
	btn2.set_size(100, 50)
	alert.set_size(80, 20)
	entry.set_text('Good Night!')
	btn.on('clicked', btn_clicked, &window)

	gtk.accel_map_add_entry('GTK-Test/File/Quit', 65, 0)
	quit.set_accel_path('GTKTest/File/Quit')
	quit.set_use_underline(true)
	quit.on('activate', menu_exit, &window)

	alert.on('clicked', alert_clicked, &window)

	hbox.add(entry)
	hbox.add(alert)

	vbox.add(bar)
	vbox.add(btn)
	vbox.add(btn2)
	vbox.add(hbox)

	window.set_position(.center)
	window.set_title('Im made with V')
	window.add(vbox)
	window.on('destroy', win_destroy, voidptr(0))
	window.show_all()
	gtk.main()
}
