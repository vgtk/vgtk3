module gio

pub struct ActionGroup {
	c &GActionGroup
}

pub fn (a &ActionGroup) get_cptr() &GActionGroup {
	return a.c
}
