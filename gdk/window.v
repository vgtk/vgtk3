module gdk

pub enum WindowType {
	root = C.GDK_WINDOW_ROOT
	toplevel = C.GDK_WINDOW_TOPLEVEL
	child = C.GDK_WINDOW_CHILD
	temp = C.GDK_WINDOW_TEMP
	foreign = C.GDK_WINDOW_FOREIGN
	offscreen = C.GDK_WINDOW_OFFSCREEN
	subsurface = C.GDK_WINDOW_SUBSURFACE
}

pub enum Gravity {
	north_west = C.GDK_GRAVITY_NORTH_WEST
	north = C.GDK_GRAVITY_NORTH
	north_east = C.GDK_GRAVITY_NORTH_EAST
	west = C.GDK_GRAVITY_WEST
	center = C.GDK_GRAVITY_CENTER
	east = C.GDK_GRAVITY_EAST
	south_west = C.GDK_GRAVITY_SOUTH_WEST
	south = C.GDK_GRAVITY_SOUTH
	south_east = C.GDK_GRAVITY_SOUTH_EAST
	static_ = C.GDK_GRAVITY_STATIC
}

pub enum WindowState {
	withdrawn = C.GDK_WINDOW_STATE_WITHDRAWN
	iconified = C.GDK_WINDOW_STATE_ICONIFIED
	maximized = C.GDK_WINDOW_STATE_MAXIMIZED
	sticky = C.GDK_WINDOW_STATE_STICKY
	fullscreen = C.GDK_WINDOW_STATE_FULLSCREEN
	above = C.GDK_WINDOW_STATE_ABOVE
	below = C.GDK_WINDOW_STATE_BELOW
	focused = C.GDK_WINDOW_STATE_FOCUSED
	tiled = C.GDK_WINDOW_STATE_TILED
	top_tiled = C.GDK_WINDOW_STATE_TOP_TILED
	top_resizable = C.GDK_WINDOW_STATE_TOP_RESIZABLE
	right_tiled = C.GDK_WINDOW_STATE_RIGHT_TILED
	right_resizable = C.GDK_WINDOW_STATE_RIGHT_RESIZABLE
	bottom_tiled = C.GDK_WINDOW_STATE_BOTTOM_TILED
	bottom_resizable = C.GDK_WINDOW_STATE_BOTTOM_RESIZABLE
	left_tiled = C.GDK_WINDOW_STATE_LEFT_TILED
	left_resizable = C.GDK_WINDOW_STATE_LEFT_RESIZABLE
}

pub enum FullScreenMode {
	current_monitor = C.GDK_FULLSCREEN_ON_CURRENT_MONITOR
	all_monitors = C.GDK_FULLSCREEN_ON_ALL_MONITORS
}

pub enum AnchorHints {
	flip_x = C.GDK_ANCHOR_FLIP_X
	flip_y = C.GDK_ANCHOR_FLIP_Y
	slide_x = C.GDK_ANCHOR_SLIDE_X
	slide_y = C.GDK_ANCHOR_SLIDE_Y
	resize_x = C.GDK_ANCHOR_RESIZE_X
	resize_y = C.GDK_ANCHOR_RESIZE_Y
	flip = C.GDK_ANCHOR_FLIP
	slide = C.GDK_ANCHOR_SLIDE
	resize = C.GDK_ANCHOR_RESIZE
}

pub enum WindowEdge {
	north_west = C.GDK_WINDOW_EDGE_NORTH_WEST
	north = C.GDK_WINDOW_EDGE_NORTH
	north_east = C.GDK_WINDOW_EDGE_NORTH_EAST
	west = C.GDK_WINDOW_EDGE_WEST
	east = C.GDK_WINDOW_EDGE_EAST
	south_west = C.GDK_WINDOW_EDGE_SOUTH_WEST
	south = C.GDK_WINDOW_EDGE_SOUTH
	south_east = C.GDK_WINDOW_EDGE_SOUTH_EAST
}

pub enum WindowHints {
	hint_pos = C.GDK_HINT_POS
	hint_min_size = C.GDK_HINT_MIN_SIZE
	hint_max_size = C.GDK_HINT_MAX_SIZE
	hint_base_size = C.GDK_HINT_BASE_SIZE
	hint_aspect = C.GDK_HINT_ASPECT
	hint_resize_inc = C.GDK_HINT_RESIZE_INC
	hint_win_gravity = C.GDK_HINT_WIN_GRAVITY
	hint_user_pos = C.GDK_HINT_USER_POS
	hint_user_size = C.GDK_HINT_USER_SIZE
}

pub enum ModifierType {
	shift_mask = C.GDK_SHIFT_MASK
	lock_mask = C.GDK_LOCK_MASK
	control_mask = C.GDK_CONTROL_MASK
	mod1_mask = C.GDK_MOD1_MASK
	mod2_mask = C.GDK_MOD2_MASK
	mod3_mask = C.GDK_MOD3_MASK
	mod4_mask = C.GDK_MOD4_MASK
	mod5_mask = C.GDK_MOD5_MASK
	button1_mask = C.GDK_BUTTON1_MASK
	button2_mask = C.GDK_BUTTON2_MASK
	button3_mask = C.GDK_BUTTON3_MASK
	button4_mask = C.GDK_BUTTON4_MASK
	button5_mask = C.GDK_BUTTON5_MASK
	modifier_reserved_13_mask = C.GDK_MODIFIER_RESERVED_13_MASK
	modifier_reserved_14_mask = C.GDK_MODIFIER_RESERVED_14_MASK
	modifier_reserved_15_mask = C.GDK_MODIFIER_RESERVED_15_MASK
	modifier_reserved_16_mask = C.GDK_MODIFIER_RESERVED_16_MASK
	modifier_reserved_17_mask = C.GDK_MODIFIER_RESERVED_17_MASK
	modifier_reserved_18_mask = C.GDK_MODIFIER_RESERVED_18_MASK
	modifier_reserved_19_mask = C.GDK_MODIFIER_RESERVED_19_MASK
	modifier_reserved_20_mask = C.GDK_MODIFIER_RESERVED_20_MASK
	modifier_reserved_21_mask = C.GDK_MODIFIER_RESERVED_21_MASK
	modifier_reserved_22_mask = C.GDK_MODIFIER_RESERVED_22_MASK
	modifier_reserved_23_mask = C.GDK_MODIFIER_RESERVED_23_MASK
	modifier_reserved_24_mask = C.GDK_MODIFIER_RESERVED_24_MASK
	modifier_reserved_25_mask = C.GDK_MODIFIER_RESERVED_25_MASK
}

pub enum ModifierIntent {
	primary_accelerator = C.GDK_MODIFIER_INTENT_PRIMARY_ACCELERATOR
	context_menu = C.GDK_MODIFIER_INTENT_CONTEXT_MENU
	extend_selection = C.GDK_MODIFIER_INTENT_EXTEND_SELECTION
	modify_selection = C.GDK_MODIFIER_INTENT_MODIFY_SELECTION
	no_text_input = C.GDK_MODIFIER_INTENT_NO_TEXT_INPUT
	shift_group = C.GDK_MODIFIER_INTENT_SHIFT_GROUP
	default_mod_mask = C.GDK_MODIFIER_INTENT_DEFAULT_MOD_MASK
}

pub struct Window {
	c &C.GdkWindow
}

pub fn (w Window) get_cptr() &C.GdkWindow {
	return w.c
}
