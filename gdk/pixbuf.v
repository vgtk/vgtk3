module gdk

pub struct Pixbuf {
	c &GdkPixbuf
}

pub fn (p Pixbuf) get_cptr() &GdkPixbuf {
	return p.c
}
