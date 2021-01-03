module gdk

pub type WindowType = int

const (
	window_root       = WindowType(C.GDK_WINDOW_ROOT)
	window_toplevel   = WindowType(C.GDK_WINDOW_TOPLEVEL)
	window_child      = WindowType(C.GDK_WINDOW_CHILD)
	window_temp       = WindowType(C.GDK_WINDOW_TEMP)
	window_foreign    = WindowType(C.GDK_WINDOW_FOREIGN)
	window_offscreen  = WindowType(C.GDK_WINDOW_OFFSCREEN)
	window_subsurface = WindowType(C.GDK_WINDOW_SUBSURFACE)
)

pub type Gravity = int

pub const (
	gravity_north_west = Gravity(C.GDK_GRAVITY_NORTH_WEST)
	gravity_north      = Gravity(C.GDK_GRAVITY_NORTH)
	gravity_north_east = Gravity(C.GDK_GRAVITY_NORTH_EAST)
	gravity_west       = Gravity(C.GDK_GRAVITY_WEST)
	gravity_center     = Gravity(C.GDK_GRAVITY_CENTER)
	gravity_east       = Gravity(C.GDK_GRAVITY_EAST)
	gravity_south_west = Gravity(C.GDK_GRAVITY_SOUTH_WEST)
	gravity_south      = Gravity(C.GDK_GRAVITY_SOUTH)
	gravity_south_east = Gravity(C.GDK_GRAVITY_SOUTH_EAST)
	gravity_static     = Gravity(C.GDK_GRAVITY_STATIC)
)

pub type WindowState = int

const (
	window_state_withdrawn        = WindowState(C.GDK_WINDOW_STATE_WITHDRAWN)
	window_state_iconified        = WindowState(C.GDK_WINDOW_STATE_ICONIFIED)
	window_state_maximized        = WindowState(C.GDK_WINDOW_STATE_MAXIMIZED)
	window_state_sticky           = WindowState(C.GDK_WINDOW_STATE_STICKY)
	window_state_fullscreen       = WindowState(C.GDK_WINDOW_STATE_FULLSCREEN)
	window_state_above            = WindowState(C.GDK_WINDOW_STATE_ABOVE)
	window_state_below            = WindowState(C.GDK_WINDOW_STATE_BELOW)
	window_state_focused          = WindowState(C.GDK_WINDOW_STATE_FOCUSED)
	window_state_tiled            = WindowState(C.GDK_WINDOW_STATE_TILED)
	window_state_top_tiled        = WindowState(C.GDK_WINDOW_STATE_TOP_TILED)
	window_state_top_resizable    = WindowState(C.GDK_WINDOW_STATE_TOP_RESIZABLE)
	window_state_right_tiled      = WindowState(C.GDK_WINDOW_STATE_RIGHT_TILED)
	window_state_right_resizable  = WindowState(C.GDK_WINDOW_STATE_RIGHT_RESIZABLE)
	window_state_bottom_tiled     = WindowState(C.GDK_WINDOW_STATE_BOTTOM_TILED)
	window_state_bottom_resizable = WindowState(C.GDK_WINDOW_STATE_BOTTOM_RESIZABLE)
	window_state_left_tiled       = WindowState(C.GDK_WINDOW_STATE_LEFT_TILED)
	window_state_left_resizable   = WindowState(C.GDK_WINDOW_STATE_LEFT_RESIZABLE)
)

pub type FullScreenMode = int

const (
	fullscreen_on_current_monitor = FullScreenMode(C.GDK_FULLSCREEN_ON_CURRENT_MONITOR)
	fullscreen_on_all_monitors    = FullScreenMode(C.GDK_FULLSCREEN_ON_ALL_MONITORS)
)

pub type AnchorHints = int

const (
	anchor_flip_x   = AnchorHints(C.GDK_ANCHOR_FLIP_X)
	anchor_flip_y   = AnchorHints(C.GDK_ANCHOR_FLIP_Y)
	anchor_slide_x  = AnchorHints(C.GDK_ANCHOR_SLIDE_X)
	anchor_slide_y  = AnchorHints(C.GDK_ANCHOR_SLIDE_Y)
	anchor_resize_x = AnchorHints(C.GDK_ANCHOR_RESIZE_X)
	anchor_resize_y = AnchorHints(C.GDK_ANCHOR_RESIZE_Y)
	anchor_flip     = AnchorHints(C.GDK_ANCHOR_FLIP)
	anchor_slide    = AnchorHints(C.GDK_ANCHOR_SLIDE)
	anchor_resize   = AnchorHints(C.GDK_ANCHOR_RESIZE)
)

pub type WindowEdge = int

const (
	window_edge_north_west = WindowEdge(C.GDK_WINDOW_EDGE_NORTH_WEST)
	window_edge_north      = WindowEdge(C.GDK_WINDOW_EDGE_NORTH)
	window_edge_north_east = WindowEdge(C.GDK_WINDOW_EDGE_NORTH_EAST)
	window_edge_west       = WindowEdge(C.GDK_WINDOW_EDGE_WEST)
	window_edge_east       = WindowEdge(C.GDK_WINDOW_EDGE_EAST)
	window_edge_south_west = WindowEdge(C.GDK_WINDOW_EDGE_SOUTH_WEST)
	window_edge_south      = WindowEdge(C.GDK_WINDOW_EDGE_SOUTH)
	window_edge_south_east = WindowEdge(C.GDK_WINDOW_EDGE_SOUTH_EAST)
)

pub type WindowHints = int

const (
	hint_pos         = WindowHints(C.GDK_HINT_POS)
	hint_min_size    = WindowHints(C.GDK_HINT_MIN_SIZE)
	hint_max_size    = WindowHints(C.GDK_HINT_MAX_SIZE)
	hint_base_size   = WindowHints(C.GDK_HINT_BASE_SIZE)
	hint_aspect      = WindowHints(C.GDK_HINT_ASPECT)
	hint_resize_inc  = WindowHints(C.GDK_HINT_RESIZE_INC)
	hint_win_gravity = WindowHints(C.GDK_HINT_WIN_GRAVITY)
	hint_user_pos    = WindowHints(C.GDK_HINT_USER_POS)
	hint_user_size   = WindowHints(C.GDK_HINT_USER_SIZE)
)

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
