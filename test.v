import gtk3

fn main() {
	window := gtk3.new_window()
	btn := gtk3.new_button("Bouton")

	btn.set_size(200, 200)

	window.set_size(640, 480)
	window.center()
	window.set_title("Bonjour Monde")
	window.add(btn)
	window.show()
	gtk3.run()
	
}
