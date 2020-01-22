module gtk

// TODO: Remove the prefix `gtk__`, when V bug is fixed
pub type gtk__PackType int

pub const (
	PACK_START = PackType(C.GTK_PACK_START)
	PACK_END   = PackType(C.GTK_PACK_END)
)
