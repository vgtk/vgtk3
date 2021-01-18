module gdk

pub enum InputSource {
	source_mouse = C.GDK_SOURCE_MOUSE
	source_pen = C.GDK_SOURCE_PEN
	source_eraser = C.GDK_SOURCE_ERASER
	source_cursor = C.GDK_SOURCE_CURSOR
	source_keyboard = C.GDK_SOURCE_KEYBOARD
	source_touchscreen = C.GDK_SOURCE_TOUCHSCREEN
	source_touchpad = C.GDK_SOURCE_TOUCHPAD
	source_trackpoint = C.GDK_SOURCE_TRACKPOINT
	source_tablet_pad = C.GDK_SOURCE_TABLET_PAD
}

pub struct Device {
	c &C.GdkDevice
}

pub fn (d &Device) get_cptr() &C.GdkDevice {
	return d.c
}
