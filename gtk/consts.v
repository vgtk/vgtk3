module gtk

pub const (
	major_version = C.gtk_major_version
	minor_version = C.gtk_minor_version
	micro_version = C.gtk_micro_version
	version       = major_version.str() + '.' + minor_version.str() + '.' + micro_version.str()
)
