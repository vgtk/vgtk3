module gdk

pub type InputSource int

const (
	SOURCE_MOUSE       = InputSource(C.GDK_SOURCE_MOUSE)
	SOURCE_PEN         = InputSource(C.GDK_SOURCE_PEN)
	SOURCE_ERASER      = InputSource(C.GDK_SOURCE_ERASER)
	SOURCE_CURSOR      = InputSource(C.GDK_SOURCE_CURSOR)
	SOURCE_KEYBOARD    = InputSource(C.GDK_SOURCE_KEYBOARD)
	SOURCE_TOUCHSCREEN = InputSource(C.GDK_SOURCE_TOUCHSCREEN)
	SOURCE_TOUCHPAD    = InputSource(C.GDK_SOURCE_TOUCHPAD)
	SOURCE_TRACKPOINT  = InputSource(C.GDK_SOURCE_TRACKPOINT)
	SOURCE_TABLET_PAD  = InputSource(C.GDK_SOURCE_TABLET_PAD)
)

pub struct Device {
	c &GdkDevice
}

pub fn (d &Device) get_cptr() &GdkDevice {
	return d.c
}
