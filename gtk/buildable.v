module gtk

pub struct Buildable {
	c &GtkBuildable
}

pub fn (b Buildable) set_name(name string) {
	gtk_buildable_set_name(b.c, name.str)
}

pub fn (b Buildable) get_name() string {
	return tos3(gtk_buildable_get_name(b.c))
}

pub fn (b Buildable) add_child(builder Builder, child &GObject, type_ string) {
	gtk_buildable_add_child(b.c, builder.c, child, type_.str)
}

pub fn (b Buildable) set_buildable_property(builder Builder, name string, value &GValue) {
	gtk_buildable_set_buildable_property(b.c, builder.c, name.str, value)
}

pub fn (b Buildable) construct_child(builder Builder, name string) &GObject {
	return gtk_buildable_construct_child(b.c, builder.c, name.str)
}

pub fn (b Buildable) custom_tag_start(builder Builder, child &GObject, tagname string) (&GMarkupParser, voidptr) {
	parser := &GMarkupParser(0)
	data := voidptr(0)
	gtk_buildable_custom_tag_start(b.c, builder.c, child, tagname.str, &parser, &data)
	return parser, data
}

pub fn (b Buildable) custom_tag_end(builder Builder, child &GObject, tagname string, data voidptr) {
	gtk_buildable_custom_tag_end(b.c, builder.c, child, tagname.str, data)
}

pub fn (b Buildable) custom_finished(builder Builder, child &GObject, tagname string, data voidptr) {
	gtk_buildable_custom_finished(b.c, builder.c, child, tagname.str, data)
}

pub fn (b Buildable) parser_finished(builder Builder) {
	gtk_buildable_parser_finished(b.c, builder.c)
}

pub fn (b Buildable) get_internal_child(builder Builder, childname string) &GObject {
	return gtk_buildable_get_internal_child(b.c, builder.c, childname.str)
}
