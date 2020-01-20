module gtk

pub fn (w &Widget) to_window() Window {
	return Window{w}
}
