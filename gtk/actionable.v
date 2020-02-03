module gtk

pub struct Actionable {
	c &GtkActionable
}

pub fn (a Actionable) get_action_name() string {
	return tos3(gtk_actionable_get_action_name(a.c))
}

pub fn (a Actionable) set_action_name(action_name string) {
	gtk_actionable_set_action_name(a.c, action_name.str)
}

// TODO:
pub fn (a Actionable) get_action_target_value() &GVariant {
	return gtk_actionable_get_action_target_value(a.c)
}

pub fn (a Actionable) set_action_target_value(target_value &GVariant) {
	gtk_actionable_set_action_target_value(a.c, target_value)
}

// TODO: void gtk_actionable_set_action_target (GtkActionable *actionable, const gchar *format_string, ...)

pub fn (a Actionable) set_detailed_action_name(detailed_action_name string) {
	gtk_actionable_set_detailed_action_name(a.c, detailed_action_name.str)
}
