import gtk3

fn main() {
	window := gtk3.new_window()
	window.set_size(640, 480)
	window.center()
	window.set_title("Bonjour Monde")
	window.show()

	go run()
	while true {

	}
	println("test")
}

fn run() {
	gtk3.run()
}