module gtk

// TODO: Remove the prefix `gtk__`, when V bug is fixed
pub type gtk__ImageType int

pub const (
	IMAGE_EMPTY = ImageType(C.GTK_IMAGE_EMPTY) 
	IMAGE_PIXBUF = ImageType(C.GTK_IMAGE_PIXBUF) 
	IMAGE_STOCK = ImageType(C.GTK_IMAGE_STOCK) 
	IMAGE_ICON_SET = ImageType(C.GTK_IMAGE_ICON_SET) 
	IMAGE_ANIMATION = ImageType(C.GTK_IMAGE_ANIMATION) 
	IMAGE_ICON_NAME = ImageType(C.GTK_IMAGE_ICON_NAME) 
	IMAGE_GICON = ImageType(C.GTK_IMAGE_GICON) 
	IMAGE_SURFACE = ImageType(C.GTK_IMAGE_SURFACE) 
)
