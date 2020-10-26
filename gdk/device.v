module gdk

pub type InputSource = int

const (
	source_mouse       = InputSource(C.GDK_SOURCE_MOUSE)
	source_pen         = InputSource(C.GDK_SOURCE_PEN)
	source_eraser      = InputSource(C.GDK_SOURCE_ERASER)
	source_cursor      = InputSource(C.GDK_SOURCE_CURSOR)
	source_keyboard    = InputSource(C.GDK_SOURCE_KEYBOARD)
	source_touchscreen = InputSource(C.GDK_SOURCE_TOUCHSCREEN)
	source_touchpad    = InputSource(C.GDK_SOURCE_TOUCHPAD)
	source_trackpoint  = InputSource(C.GDK_SOURCE_TRACKPOINT)
	source_tablet_pad  = InputSource(C.GDK_SOURCE_TABLET_PAD)
)

pub struct Device {
	c &C.GdkDevice
}

pub fn (d &Device) get_cptr() &C.GdkDevice {
	return d.c
}
