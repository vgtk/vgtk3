module gtk

pub struct Buildable {
	c &C.GtkBuildable
}

pub fn (b Buildable) set_name(name string) {
	C.gtk_buildable_set_name(b.c, name.str)
}

pub fn (b Buildable) get_name() string {
	return tos3(C.gtk_buildable_get_name(b.c))
}

pub fn (b Buildable) add(builder Builder, child &C._GObject, type_ string) {
	C.gtk_buildable_add_child(b.c, builder.c, child, type_.str)
}

pub fn (b Buildable) set_property(builder Builder, name string, value &C._GValue) {
	C.gtk_buildable_set_buildable_property(b.c, builder.c, name.str, value)
}

pub fn (b Buildable) construct_child(builder Builder, name string) &C._GObject {
	return C.gtk_buildable_construct_child(b.c, builder.c, name.str)
}

pub fn (b Buildable) custom_tag_start(builder Builder, child &C._GObject, tagname string) (&C._GMarkupParser, voidptr) {
	parser := &C._GMarkupParser(0)
	data := voidptr(0)
	C.gtk_buildable_custom_tag_start(b.c, builder.c, child, tagname.str, &parser, &data)
	return parser, data
}

pub fn (b Buildable) custom_tag_end(builder Builder, child &C._GObject, tagname string, data voidptr) {
	C.gtk_buildable_custom_tag_end(b.c, builder.c, child, tagname.str, data)
}

pub fn (b Buildable) custom_finished(builder Builder, child &C._GObject, tagname string, data voidptr) {
	C.gtk_buildable_custom_finished(b.c, builder.c, child, tagname.str, data)
}

pub fn (b Buildable) parser_finished(builder Builder) {
	C.gtk_buildable_parser_finished(b.c, builder.c)
}

pub fn (b Buildable) get_internal_child(builder Builder, childname string) &C._GObject {
	return C.gtk_buildable_get_internal_child(b.c, builder.c, childname.str)
}
