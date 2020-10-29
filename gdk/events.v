module gdk

pub type EventMask = int

const (
	exposure_mask            = EventMask(C.GDK_EXPOSURE_MASK)
	pointer_motion_mask      = EventMask(C.GDK_POINTER_MOTION_MASK)
	pointer_motion_hint_mask = EventMask(C.GDK_POINTER_MOTION_HINT_MASK)
	button_motion_mask       = EventMask(C.GDK_BUTTON_MOTION_MASK)
	button1_motion_mask      = EventMask(C.GDK_BUTTON1_MOTION_MASK)
	button2_motion_mask      = EventMask(C.GDK_BUTTON2_MOTION_MASK)
	button3_motion_mask      = EventMask(C.GDK_BUTTON3_MOTION_MASK)
	button_press_mask        = EventMask(C.GDK_BUTTON_PRESS_MASK)
	button_release_mask      = EventMask(C.GDK_BUTTON_RELEASE_MASK)
	key_press_mask           = EventMask(C.GDK_KEY_PRESS_MASK)
	key_release_mask         = EventMask(C.GDK_KEY_RELEASE_MASK)
	enter_notify_mask        = EventMask(C.GDK_ENTER_NOTIFY_MASK)
	leave_notify_mask        = EventMask(C.GDK_LEAVE_NOTIFY_MASK)
	focus_change_mask        = EventMask(C.GDK_FOCUS_CHANGE_MASK)
	structure_mask           = EventMask(C.GDK_STRUCTURE_MASK)
	property_change_mask     = EventMask(C.GDK_PROPERTY_CHANGE_MASK)
	visibility_notify_mask   = EventMask(C.GDK_VISIBILITY_NOTIFY_MASK)
	proximity_in_mask        = EventMask(C.GDK_PROXIMITY_IN_MASK)
	proximity_out_mask       = EventMask(C.GDK_PROXIMITY_OUT_MASK)
	substructure_mask        = EventMask(C.GDK_SUBSTRUCTURE_MASK)
	scroll_mask              = EventMask(C.GDK_SCROLL_MASK)
	touch_mask               = EventMask(C.GDK_TOUCH_MASK)
	smooth_scroll_mask       = EventMask(C.GDK_SMOOTH_SCROLL_MASK)
	touchpad_gesture_mask    = EventMask(C.GDK_TOUCHPAD_GESTURE_MASK)
	tablet_pad_mask          = EventMask(C.GDK_TABLET_PAD_MASK)
	all_events_mask          = EventMask(C.GDK_ALL_EVENTS_MASK)
)

pub type WMDecoration = int

const (
	decor_all      = WMDecoration(C.GDK_DECOR_ALL)
	decor_border   = WMDecoration(C.GDK_DECOR_BORDER)
	decor_resizeh  = WMDecoration(C.GDK_DECOR_RESIZEH)
	decor_title    = WMDecoration(C.GDK_DECOR_TITLE)
	decor_menu     = WMDecoration(C.GDK_DECOR_MENU)
	decor_minimize = WMDecoration(C.GDK_DECOR_MINIMIZE)
	decor_maximize = WMDecoration(C.GDK_DECOR_MAXIMIZE)
)

pub type WMFunction = int

const (
	func_all      = WMFunction(C.GDK_FUNC_ALL)
	func_resize   = WMFunction(C.GDK_FUNC_RESIZE)
	func_move     = WMFunction(C.GDK_FUNC_MOVE)
	func_minimize = WMFunction(C.GDK_FUNC_MINIMIZE)
	func_maximize = WMFunction(C.GDK_FUNC_MAXIMIZE)
	func_close    = WMFunction(C.GDK_FUNC_CLOSE)
)
