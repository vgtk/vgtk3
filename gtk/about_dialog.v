module gtk

// import gdk

pub enum License {
	unknown = C.GTK_LICENSE_UNKNOWN
	custom = C.GTK_LICENSE_CUSTOM
	gpl_2_0 = C.GTK_LICENSE_GPL_2_0
	gpl_3_0 = C.GTK_LICENSE_GPL_3_0
	lgpl_2_1 = C.GTK_LICENSE_LGPL_2_1
	lgpl_3_0 = C.GTK_LICENSE_LGPL_3_0
	bsd = C.GTK_LICENSE_BSD
	mit_x11 = C.GTK_LICENSE_MIT_X11
	artistic = C.GTK_LICENSE_ARTISTIC
	gpl_2_0_only = C.GTK_LICENSE_GPL_2_0_ONLY
	gpl_3_0_only = C.GTK_LICENSE_GPL_3_0_ONLY
	lgpl_2_1_only = C.GTK_LICENSE_LGPL_2_1_ONLY
	lgpl_3_0_only = C.GTK_LICENSE_LGPL_3_0_ONLY
	agpl_3_0 = C.GTK_LICENSE_AGPL_3_0
	agpl_3_0_only = C.GTK_LICENSE_AGPL_3_0_ONLY
	bsd_3 = C.GTK_LICENSE_BSD_3
	apache_2_0 = C.GTK_LICENSE_APACHE_2_0
	mpl_2_0 = C.GTK_LICENSE_MPL_2_0
}

pub struct AboutDialog {
	c &C.GtkWidget
}

// pub fn new_about_dialog() AboutDialog {
// 	return AboutDialog{C.gtk_about_dialog_new()}
// }

// pub fn (a AboutDialog) get_program_name() string {
// 	unsafe {
// 		return tos3(C.gtk_about_dialog_get_program_name(a.c))
// 	}
// }

// pub fn (a AboutDialog) set_program_name(name string) {
// 	C.gtk_about_dialog_set_program_name(a.c, name.str)
// }

pub fn (a AboutDialog) get_version() string {
	unsafe {
		return tos3(C.gtk_about_dialog_get_version(a.c))
	}
}

pub fn (a AboutDialog) set_version(version string) {
	C.gtk_about_dialog_set_version(a.c, version.str)
}

pub fn (a AboutDialog) get_copyright() string {
	unsafe {
		return tos3(C.gtk_about_dialog_get_copyright(a.c))
	}
}

pub fn (a AboutDialog) set_copyright(copyright string) {
	C.gtk_about_dialog_set_copyright(a.c, copyright.str)
}

pub fn (a AboutDialog) get_comments() string {
	unsafe {
		return tos3(C.gtk_about_dialog_get_comments(a.c))
	}
}

pub fn (a AboutDialog) set_comments(comments string) {
	C.gtk_about_dialog_set_comments(a.c, comments.str)
}

pub fn (a AboutDialog) get_license() string {
	unsafe {
		return tos3(C.gtk_about_dialog_get_license(a.c))
	}
}

pub fn (a AboutDialog) set_license(license string) {
	C.gtk_about_dialog_set_license(a.c, license.str)
}

pub fn (a AboutDialog) get_wrap_license() bool {
	return C.gtk_about_dialog_get_wrap_license(a.c)
}

pub fn (a AboutDialog) set_wrap_license(wrap_license bool) {
	C.gtk_about_dialog_set_wrap_license(a.c, wrap_license)
}

pub fn (a AboutDialog) get_license_type() License {
	return C.gtk_about_dialog_get_license_type(a.c)
}

pub fn (a AboutDialog) set_license_type(license_type License) {
	C.gtk_about_dialog_set_license_type(a.c, license_type)
}

pub fn (a AboutDialog) get_website() string {
	unsafe {
		return tos3(C.gtk_about_dialog_get_website(a.c))
	}
}

pub fn (a AboutDialog) set_website(website string) {
	C.gtk_about_dialog_set_website(a.c, website.str)
}

pub fn (a AboutDialog) get_website_label() string {
	unsafe {
		return tos3(C.gtk_about_dialog_get_website_label(a.c))
	}
}

pub fn (a AboutDialog) set_website_label(website_label string) {
	C.gtk_about_dialog_set_website_label(a.c, website_label.str)
}

pub fn (a AboutDialog) get_authors() []string {
	return carray_string_to_array_string(C.gtk_about_dialog_get_authors(a.c))
}

pub fn (a AboutDialog) set_authors(authors []string) {
	C.gtk_about_dialog_set_authors(a.c, authors.data)
}

pub fn (a AboutDialog) get_artists() []string {
	return carray_string_to_array_string(C.gtk_about_dialog_get_artists(a.c))
}

pub fn (a AboutDialog) set_artists(artists []string) {
	C.gtk_about_dialog_set_artists(a.c, artists.data)
}

pub fn (a AboutDialog) get_documenters() []string {
	return carray_string_to_array_string(C.gtk_about_dialog_get_documenters(a.c))
}

pub fn (a AboutDialog) set_documenters(documenters []string) {
	C.gtk_about_dialog_set_documenters(a.c, documenters.data)
}

pub fn (a AboutDialog) get_translator_credits() string {
	unsafe {
		return tos3(C.gtk_about_dialog_get_translator_credits(a.c))
	}
}

pub fn (a AboutDialog) set_translator_credits(translator_credits []string) {
	C.gtk_about_dialog_set_translator_credits(a.c, translator_credits.data)
}

// pub fn (a AboutDialog) get_logo() gdk.Pixbuf {
// 	return gdk.Pixbuf{C.gtk_about_dialog_get_logo(a.c)}
// }

// pub fn (a AboutDialog) set_logo(logo gdk.Pixbuf) {
// 	C.gtk_about_dialog_set_logo(a.c, logo.get_cptr())
// }

pub fn (a AboutDialog) get_logo_icon_name() string {
	unsafe {
		return tos3(C.gtk_about_dialog_get_logo_icon_name(a.c))
	}
}

pub fn (a AboutDialog) set_logo_icon_name(icon_name string) {
	C.gtk_about_dialog_set_logo_icon_name(a.c, icon_name.str)
}

pub fn (a AboutDialog) add_credit_section(section_name string, people []string) {
	C.gtk_about_dialog_add_credit_section(a.c, section_name.str, people.data)
}

// TODO: Variadic
pub fn show_about_dialog(parent Window) {
	C.gtk_show_about_dialog(parent.c, 0)
}

pub fn (a AboutDialog) on_activate_link(handler fn (AboutDialog, charptr, voidptr), user_data voidptr) {
	C.g_signal_connect(a.c, 'activate-link'.str, handler, user_data)
}

// Inherited from Widget
pub fn (a AboutDialog) show() {
	C.gtk_widget_show(a.c)
}

// Inherited from Window
pub fn (a AboutDialog) set_title(title string) {
	C.gtk_window_set_title(a.c, title.str)
}
