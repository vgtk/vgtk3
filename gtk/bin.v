module gtk

pub struct Bin {
	c &GtkBin
}

pub fn (b Bin) get_child() Widget {
	return Widget{gtk_bin_get_child(b.c)}
}
