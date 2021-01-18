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
	shift_mask = 1
	lock_mask = 2
	control_mask = 4
	mod1_mask = 8
	mod2_mask = 16
	mod3_mask = 32
	mod4_mask = 64
	mod5_mask = 128
	button1_mask = 256
	button2_mask = 512
	button3_mask = 1024
	button4_mask = 2048
	button5_mask = 4096
	super_mask = 67108864
	hyper_mask = 134217728
	meta_mask = 268435456
	release_mask = 1073741824
	modifier_mask = 0x5c001fff
}

pub enum ModifierIntent {
	primary_accelerator
	context_menu
	extend_selection
	modify_selection
	no_text_input
	shift_group
	default_mod_mask
}

pub struct Window {
	c &C.GdkWindow
}

pub fn (w Window) get_cptr() &C.GdkWindow {
	return w.c
}
