module gtk

pub enum ImageType {
	empty = C.GTK_IMAGE_EMPTY
	pixbuf = C.GTK_IMAGE_PIXBUF
	stock = C.GTK_IMAGE_STOCK
	icon_set = C.GTK_IMAGE_ICON_SET
	animation = C.GTK_IMAGE_ANIMATION
	icon_name = C.GTK_IMAGE_ICON_NAME
	gicon = C.GTK_IMAGE_GICON
	surface = C.GTK_IMAGE_SURFACE
}
