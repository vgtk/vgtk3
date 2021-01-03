module gtk

pub struct Actionable {
	c &C.GtkActionable
}

pub fn (a Actionable) get_action_name() string {
	return tos3(C.gtk_actionable_get_action_name(a.c))
}

pub fn (a Actionable) set_action_name(action_name string) {
	C.gtk_actionable_set_action_name(a.c, action_name.str)
}

// TODO:
pub fn (a Actionable) get_action_target_value() &C.GVariant {
	return C.gtk_actionable_get_action_target_value(a.c)
}

pub fn (a Actionable) set_action_target_value(target_value &C.GVariant) {
	C.gtk_actionable_set_action_target_value(a.c, target_value)
}

// TODO: void C.gtk_actionable_set_action_target (GtkActionable *actionable, const gchar *format_string, ...)
pub fn (a Actionable) set_detailed_action_name(detailed_action_name string) {
	C.gtk_actionable_set_detailed_action_name(a.c, detailed_action_name.str)
}
