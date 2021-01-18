module gdk

pub enum EventMask {
	exposure_mask = C.GDK_EXPOSURE_MASK
	pointer_motion_mask = C.GDK_POINTER_MOTION_MASK
	pointer_motion_hint_mask = C.GDK_POINTER_MOTION_HINT_MASK
	button_motion_mask = C.GDK_BUTTON_MOTION_MASK
	button1_motion_mask = C.GDK_BUTTON1_MOTION_MASK
	button2_motion_mask = C.GDK_BUTTON2_MOTION_MASK
	button3_motion_mask = C.GDK_BUTTON3_MOTION_MASK
	button_press_mask = C.GDK_BUTTON_PRESS_MASK
	button_release_mask = C.GDK_BUTTON_RELEASE_MASK
	key_press_mask = C.GDK_KEY_PRESS_MASK
	key_release_mask = C.GDK_KEY_RELEASE_MASK
	enter_notify_mask = C.GDK_ENTER_NOTIFY_MASK
	leave_notify_mask = C.GDK_LEAVE_NOTIFY_MASK
	focus_change_mask = C.GDK_FOCUS_CHANGE_MASK
	structure_mask = C.GDK_STRUCTURE_MASK
	property_change_mask = C.GDK_PROPERTY_CHANGE_MASK
	visibility_notify_mask = C.GDK_VISIBILITY_NOTIFY_MASK
	proximity_in_mask = C.GDK_PROXIMITY_IN_MASK
	proximity_out_mask = C.GDK_PROXIMITY_OUT_MASK
	substructure_mask = C.GDK_SUBSTRUCTURE_MASK
	scroll_mask = C.GDK_SCROLL_MASK
	touch_mask = C.GDK_TOUCH_MASK
	smooth_scroll_mask = C.GDK_SMOOTH_SCROLL_MASK
	touchpad_gesture_mask = C.GDK_TOUCHPAD_GESTURE_MASK
	tablet_pad_mask = C.GDK_TABLET_PAD_MASK
	all_events_mask = C.GDK_ALL_EVENTS_MASK
}

pub enum WMDecoration {
	all = C.GDK_DECOR_ALL
	border = C.GDK_DECOR_BORDER
	resizeh = C.GDK_DECOR_RESIZEH
	title = C.GDK_DECOR_TITLE
	menu = C.GDK_DECOR_MENU
	minimize = C.GDK_DECOR_MINIMIZE
	maximize = C.GDK_DECOR_MAXIMIZE
}

pub enum WMFunction {
	all = C.GDK_FUNC_ALL
	resize = C.GDK_FUNC_RESIZE
	move = C.GDK_FUNC_MOVE
	minimize = C.GDK_FUNC_MINIMIZE
	maximize = C.GDK_FUNC_MAXIMIZE
	close = C.GDK_FUNC_CLOSE
}
