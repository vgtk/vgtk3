module gio

pub struct ActionGroup {
	c &C.GActionGroup
}

pub fn (a &ActionGroup) get_cptr() &C.GActionGroup {
	return a.c
}
