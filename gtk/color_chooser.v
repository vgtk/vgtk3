module gtk

pub struct ColorChooser {
	c &GtkColorChooser
}

// TODO
pub fn (c ColorChooser) get_rgba() &GdkRGBA {
	color := &GdkRGBA(0)
	gtk_color_chooser_get_rgba(c.c, &color)
	return color
}

// TODO
pub fn (c ColorChooser) set_rgba(color &GdkRGBA) {
	gtk_color_chooser_set_rgba(c.c, color)
}

pub fn (c ColorChooser) get_use_alpha() bool {
	return gtk_color_chooser_get_use_alpha(c.c)
}

pub fn (c ColorChooser) set_use_alpha(use_alpha bool) {
	gtk_color_chooser_set_use_alpha(c.c, use_alpha)
}

// TODO
pub fn (c ColorChooser) add_palette(orientation Orientation, colors_per_line int, colors []&GdkRGBA) {
	gtk_color_chooser_add_palette(c.c, orientation, colors_per_line, colors.len, colors.data)
}
