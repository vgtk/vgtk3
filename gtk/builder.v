module gtk

import glib

pub enum BuilderError {
	invalid_type_function
	unhandled_tag
	missing_attribute
	invalid_attribute
	invalid_tag
	missing_property_value
	invalid_value
	version_mismatch
	duplicate_id
	object_type_refused
	template_mismatch
	invalid_property
	invalid_signal
	invalid_id
}

pub struct Builder {
	c &GtkBuilder
}

pub fn new_builder() Builder {
	return Builder{gtk_builder_new()}
}

pub fn new_builder_from_file(filename string) Builder {
	return Builder{gtk_builder_new_from_file(filename.str)}
}

pub fn new_builder_from_resource(resource_path string) Builder {
	return Builder{gtk_builder_new_from_resource(resource_path.str)}
}

pub fn new_builder_from_string(str string) Builder {
	return Builder{gtk_builder_new_from_string(str.str, str.len)}
}

pub fn (b Builder) add_callback_symbol(callback_name string, callback fn()) {
	gtk_builder_add_callback_symbol(b.c, callback_name.str, callback)
}

pub fn (b Builder) add_from_file(filename string) ?u32 {
	err := &GError(0)
	ret := gtk_builder_add_from_file(b.c, filename.str, &err)
	if err != 0 {
		return error(tos3(err.message))
	}
	return ret
}

pub fn (b Builder) add_from_resource(resource_path string) ?u32 {
	err := &GError(0)
	ret := gtk_builder_add_from_resource(b.c, resource_path.str, &err)
	if err != 0 {
		return error(tos3(err.message))
	}
	return ret
}

pub fn (b Builder) add_from_string(buffer string) ?u32 {
	err := &GError(0)
	ret := gtk_builder_add_from_string(b.c, buffer.str, buffer.len, &err)
	if err != 0 {
		return error(tos3(err.message))
	}
	return ret
}

pub fn (b Builder) add_objects_from_file(filename string, object_ids[]string) ?u32 {
	err := &GError(0)
	ret := gtk_builder_add_objects_from_file(b.c, filename.str, object_ids.data, &err)
	if err != 0 {
		return error(tos3(err.message))
	}
	return ret
}

pub fn (b Builder) add_objects_from_string(buffer string, object_ids[]string) ?u32 {
	err := &GError(0)
	ret := gtk_builder_add_objects_from_string(b.c, buffer.str, buffer.len, object_ids.data, &err)
	if err != 0 {
		return error(tos3(err.message))
	}
	return ret
}

pub fn (b Builder) add_objects_from_resource(resource_path string, object_ids[]string) ?u32 {
	err := &GError(0)
	ret := gtk_builder_add_objects_from_resource(b.c, resource_path.str, object_ids.data, &err)
	if err != 0 {
		return error(tos3(err.message))
	}
	return ret
}

pub fn (b Builder) extend_with_template(widget Widgeter, template_type GType, buffer string) ?u32 {
	err := &GError(0)
	wgt := widget.get_gtk_widget()
	ret := gtk_builder_extend_with_template(b.c, wgt, template_type, buffer.str, buffer.len, &err)
	if err != 0 {
		return error(tos3(err.message))
	}
	return ret
}

pub fn (b Builder) get_object(name string) GObject {
	return gtk_builder_get_object(b.c, name.str)
}

pub fn (b Builder) get_objects() glib.SList {
	return glib.SList{*gtk_builder_get_objects(b.c)}
}

pub fn (b Builder) expose_object(name string, object GObject) {
	gtk_builder_expose_object(b.c, name.str, &object)
}

pub fn (b Builder) connect_signals(user_data voidptr) {
	gtk_builder_connect_signals(b.c, user_data)
}

// TODO: void gtk_builder_connect_signals_full (GtkBuilder *builder, GtkBuilderConnectFunc func, gpointer user_data)

pub fn (b Builder) set_translation_domain(domain string) {
	gtk_builder_set_translation_domain(b.c, domain.str)
}

pub fn (b Builder) get_translation_domain() string {
	return tos3(gtk_builder_get_translation_domain(b.c))
}

pub fn (b Builder) set_application(application Application) {
	gtk_builder_set_application(b.c, application.c)
}

pub fn (b Builder) get_application() Application {
	return Application{gtk_builder_get_application(b.c)}
}

pub fn (b Builder) get_type_from_name(type_name string) GType {
	return gtk_builder_get_type_from_name(b.c, type_name.str)
}

pub fn (b Builder) value_from_string(pspec &GParamSpec, str string, value &GValue) ?bool {
	err := &GError(0)
	ret := gtk_builder_value_from_string(b.c, pspec, str.str, value, &err)
	if err != 0 {
		return error(tos3(err.message))
	}
	return ret
}

pub fn (b Builder) value_from_string_type(type_ GType, str string, value &GValue) ?bool {
	err := &GError(0)
	ret := gtk_builder_value_from_string_type(b.c, type_, str.str, value, &err)
	if err != 0 {
		return error(tos3(err.message))
	}
	return ret
} 
