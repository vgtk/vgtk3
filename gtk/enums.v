module gtk

pub enum Justification {
	left = C.GTK_JUSTIFY_LEFT
	right = C.GTK_JUSTIFY_RIGHT
	center = C.GTK_JUSTIFY_CENTER
	fill = C.GTK_JUSTIFY_FILL
}

pub enum IconSize {
	invalid = C.GTK_ICON_SIZE_INVALID
	menu = C.GTK_ICON_SIZE_MENU
	small_toolbar = C.GTK_ICON_SIZE_SMALL_TOOLBAR
	large_toolbar = C.GTK_ICON_SIZE_LARGE_TOOLBAR
	button = C.GTK_ICON_SIZE_BUTTON
	dnd = C.GTK_ICON_SIZE_DND
	dialog = C.GTK_ICON_SIZE_DIALOG
}

pub enum ReliefStyle {
	normal = C.GTK_RELIEF_NORMAL
	half = C.GTK_RELIEF_HALF
	none_ = C.GTK_RELIEF_NONE
}

pub enum TextDirection {
	none_ = C.GTK_TEXT_DIR_NONE
	ltr = C.GTK_TEXT_DIR_LTR
	rtl = C.GTK_TEXT_DIR_RTL
}

pub enum StateFlags {
	normal = C.GTK_STATE_FLAG_NORMAL
	active = C.GTK_STATE_FLAG_ACTIVE
	prelight = C.GTK_STATE_FLAG_PRELIGHT
	selected = C.GTK_STATE_FLAG_SELECTED
	insensitive = C.GTK_STATE_FLAG_INSENSITIVE
	inconsistent = C.GTK_STATE_FLAG_INCONSISTENT
	focused = C.GTK_STATE_FLAG_FOCUSED
	backdrop = C.GTK_STATE_FLAG_BACKDROP
	dir_ltr = C.GTK_STATE_FLAG_DIR_LTR
	dir_rtl = C.GTK_STATE_FLAG_DIR_RTL
	link = C.GTK_STATE_FLAG_LINK
	visited = C.GTK_STATE_FLAG_VISITED
	checked = C.GTK_STATE_FLAG_CHECKED
	drop_active = C.GTK_STATE_FLAG_DROP_ACTIVE
}

pub enum SizeRequestMode {
	height_for_width = C.GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH
	width_for_height = C.GTK_SIZE_REQUEST_WIDTH_FOR_HEIGHT
	constant_size = C.GTK_SIZE_REQUEST_CONSTANT_SIZE
}

pub enum Align {
	fill = C.GTK_ALIGN_FILL
	start = C.GTK_ALIGN_START
	end = C.GTK_ALIGN_END
	center = C.GTK_ALIGN_CENTER
	baseline = C.GTK_ALIGN_BASELINE
}

pub enum Orientation {
	horizontal = C.GTK_ORIENTATION_HORIZONTAL
	vertical = C.GTK_ORIENTATION_VERTICAL
}

pub enum Position {
	left = C.GTK_POS_LEFT
	right = C.GTK_POS_RIGHT
	top = C.GTK_POS_TOP
	bottom = C.GTK_POS_BOTTOM
}

pub enum PackType {
	start = C.GTK_PACK_START
	end = C.GTK_PACK_END
}

pub enum BaselinePosition {
	top = C.GTK_BASELINE_POSITION_TOP
	center = C.GTK_BASELINE_POSITION_CENTER
	bottom = C.GTK_BASELINE_POSITION_BOTTOM
}

pub enum DirectionType {
	tab_forward = C.GTK_DIR_TAB_FORWARD
	tab_backward = C.GTK_DIR_TAB_BACKWARD
	up = C.GTK_DIR_UP
	down = C.GTK_DIR_DOWN
	left = C.GTK_DIR_LEFT
	right = C.GTK_DIR_RIGHT
}
