module gtk

pub enum Justify {
	left
	right
	center
	fill
}

pub enum IconSize {
	invalid
	menu
	small_toolbar
	large_toolbar
	button
	dnd
	dialog
}

pub enum ReliefStyle {
	normal
	half
	@none
}

pub enum TextDirection {
	@none
	ltr
	rtl
}

pub enum StateFlags {
	normal
	active
	prelight
	selected
	insensitive
	inconsistent
	focused
	backdrop
	dir_ltr
	dir_rtl
	link
	visited
	checked
	drop_active
}

pub enum SizeRequestMode {
	height_for_width
	width_for_height
	constant_size
}

pub enum Align {
	fill
	start
	end
	center
	baseline
}

pub enum Orientation {
	horizontal
	vertical
}
