import gtk3
import os
import time

fn btn_clicked(w &C.GtkWidget, btn &gtk3.Button) {
	//btn := data[0]

	// The GtkWidget object should be ignored
	if (btn.get_label() == "GTK3-V is ..") {
		btn.set_label("GTK3-V is awesome!")
	} else {
		btn.set_label("GTK3-V is ..")
	}
}

fn alert_clicked(w &C.GtkWidget, btn &gtk3.Button) {
	btn.set_label("All Fine!")
}

fn win_destroy(w &C.GtkWidget, win gtk3.Window) {
	gtk3.main_quit() // necessary as GTK3 won't exit itself when window is destroyed.
}

fn main() {
	window := gtk3.new_window()
	vbox := gtk3.new_vbox(false, 20)
	align := gtk3.new_alignment(0.5, 0.5, 0, 0)
	btn := gtk3.new_button("GTK3-V is ..")
	btn2 := gtk3.new_button("I'm useless!")
	alert := gtk3.new_button("Alert!")

	bar := gtk3.new_menu_bar()
	menu := gtk3.new_menu()
	file_me := gtk3.new_menu_item_with_label("File")
	quit := gtk3.new_menu_item_with_label("Quit")
	file_me.set_submenu(menu)
	menu.append(quit)
	bar.append(file_me)

	hbox := gtk3.new_hbox(false, 20)
	entry := gtk3.new_entry()

	btn.set_size(200, 100)
	btn2.set_size(100, 50)
	alert.set_size(80, 20)
	entry.set_text("Good Night!")
	//entry.set_visibility(false)
	//entry.set_invisible_char('*')
	btn.add_on_clicked(btn_clicked)
	alert.add_on_clicked(alert_clicked)

	hbox.add(entry)
	hbox.add(alert)

	vbox.add(bar)
	vbox.add(btn)
	vbox.add(btn2)
	vbox.add(hbox)
	align.add(vbox)

	window.set_size(640, 480)
	window.center()
	window.set_title("I'm made with V")
	window.add(align)
	window.add_on_destroy(win_destroy)
	window.show()
	gtk3.main()
}
