import gtk3

fn btn_clicked(w &C.GtkWidget, btn gtk3.Button) {
	// The GtkWidget object should be ignored
	println("Button clicked!")
	btn.set_label("GTK3-V is awesome!")
}

fn main() {
	window := gtk3.new_window()
	btn := gtk3.new_button("GTK3-V is ..")

	btn.set_size(200, 200)
	btn.set_on_clicked(btn_clicked)

	window.set_size(640, 480)
	window.center()
	window.set_title("I'm made with V")
	window.add(btn)
	window.show()
	gtk3.run()
}
