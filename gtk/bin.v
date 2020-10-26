module gtk

pub struct Bin {
	c &C.GtkBin
}

pub fn (b Bin) get_child() Widget {
	return Widget{C.gtk_bin_get_child(b.c)}
}
