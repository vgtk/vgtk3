module glib

pub struct C.GList
pub struct C.GString {
	str charptr
	len i64
}
pub struct C.GBytes

/* Strings */
fn C.g_string_new(charptr) &GString
fn C.g_string_new_len(charptr, i64/* gssize */) &GString
fn C.g_string_sized_new(i64) &GString
fn C.g_string_assign(&GString, charptr) &GString
fn C.g_string_vprintf(&GString, charptr, va_list) 
fn C.g_string_append_vprintf(&GString, charptr, va_list) 
fn C.g_string_printf(&GString, charptr) 
fn C.g_string_append_printf(&GString, charptr) 
fn C.g_string_append(&GString, charptr) &GString
fn C.g_string_append_c(&GString, charptr) &GString
fn C.g_string_append_unichar(&GString, rune) &GString
fn C.g_string_append_len(&GString, charptr, i64/* gssize */) &GString
fn C.g_string_append_uri_escaped(&GString, charptr, charptr, bool) &GString
fn C.g_string_prepend(&GString, charptr) &GString
fn C.g_string_prepend_c(&GString, charptr) &GString
fn C.g_string_prepend_unichar(&GString, rune) &GString
fn C.g_string_prepend_len(&GString, charptr, i64/* gssize */) &GString
fn C.g_string_insert(&GString, i64/* gssize */, charptr) &GString
fn C.g_string_insert_c(&GString, i64/* gssize */, charptr) &GString
fn C.g_string_insert_unichar(&GString, i64/* gssize */, rune) &GString
fn C.g_string_insert_len(&GString, i64/* gssize */, charptr, i64/* gssize */) &GString
fn C.g_string_overwrite(&GString, i64, charptr) &GString
fn C.g_string_overwrite_len(&GString, i64, charptr, i64/* gssize */) &GString
fn C.g_string_erase(&GString, i64/* gssize */, i64/* gssize */) &GString
fn C.g_string_truncate(&GString, i64) &GString
fn C.g_string_set_size(&GString, i64) &GString
fn C.g_string_free(&GString, bool) charptr
fn C.g_string_free_to_bytes(&GString) &GBytes
fn C.g_string_up(&GString) &GString
fn C.g_string_down(&GString) &GString
fn C.g_string_hash(&GString) u32
fn C.g_string_equal(&GString, &GString) bool
