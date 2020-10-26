module gdk

pub struct Pixbuf {
	c &C.GdkPixbuf
}

pub fn (p Pixbuf) get_cptr() &C.GdkPixbuf {
	return p.c
}
