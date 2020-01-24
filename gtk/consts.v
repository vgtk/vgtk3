module gtk

pub const (
	MAJOR_VERSION = C.gtk_major_version
	MINOR_VERSION = C.gtk_minor_version
	MICRO_VERSION = C.gtk_micro_version
	VERSION = MAJOR_VERSION.str() + '.' + MINOR_VERSION.str() + '.' + MICRO_VERSION.str()
)
