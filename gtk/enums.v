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
	_none
}

pub enum TextDirection {
	_none
	ltr
	rtl
}

pub enum StateFlags {
	normal       = 0
	active       = 1
	prelight     = 2
	selected     = 4
	insensitive  = 8
	inconsistent = 16
	focused      = 32
	backdrop     = 64
	dir_ltr      = 128
	dir_rtl      = 256
	link         = 512
	visited      = 1024
	checked      = 2048
	drop_active  = 4096
}

pub enum SizeRequestMode {
	height_for_width = 0
	width_for_height = 1
	constant_size    = 2
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

pub enum Position {
	left
	right
	top
	bottom
}

pub enum PackType {
	start
	end
}

pub enum BaselinePosition {
	top
	center
	bottom
}

pub enum DirectionType {
	tab_forward
	tab_backward
	up
	down
	left
	right
}
