module pango

pub enum AttrType {
	invalid
	language
	family
	style
	weight
	variant
	stretch
	size
	font_desc
	foreground
	background
	underline
	strikethrough
	rise
	shape
	scale
	fallback
	letter_spacing
	underline_color
	strikethrough_color
	absolute_size
	gravity
	gravity_hint
	font_features
	foreground_alpha
	background_alpha
}

pub struct AttrClass {
	c &PangoAttrClass
}

pub struct Attribute {
	c &PangoAttribute
}

pub fn attr_type_register(name string) AttrType {
	return AttrType(pango_attr_type_register(name.str))
}

pub fn attr_type_get_name(type_ AttrType) string {
	return tos3(pango_attr_type_get_name(type_))
}

pub fn (a AttrClass) init(klass AttrClass) {
	pango_attribute_init(a.c, klass.c)
}

pub fn (a Attribute) copy() Attribute {
	return Attribute{pango_attribute_copy(a.c)}
}

pub fn (a Attribute) equal(attr2 Attribute) bool {
	return pango_attribute_equal(a.c, attr2.c)
}

pub fn (a Attribute) destroy() {
	pango_attribute_destroy(a.c)
}

pub fn new_attr_family(family string) Attribute {
	return Attribute{pango_attr_family_new(family.str)}
}

pub fn new_attr_style(style Style) Attribute {
	return Attribute{pango_attr_style_new(style)}
}

pub fn new_attr_variant(variant Variant) Attribute {
	return Attribute{pango_attr_variant_new(variant.c)}
}

pub fn new_attr_stretch(stretch Stretch) Attribute {
	return Attribute{pango_attr_stretch_new(stretch.c)}
}

pub fn new_attr_weight(weight Weight) Attribute {
	return Attribute{pango_attr_weight_new(weight.c)}
}

pub fn new_attr_size(size int) Attribute {
	return Attribute{pango_attr_size_new(size)}
}

pub fn new_attr_absolute_size(size int) Attribute {
	return Attribute{pango_attr_size_new_absolute(size)}
}

pub fn new_attr_font_desc(desc FontDescription) Attribute {
	return Attribute{pango_attr_font_desc_new(desc.c)}
}

pub fn new_attr_foreground(red u16, green u16, blue u16) Attribute {
	return Attribute{pango_attr_foreground_new(red, green, blue)}
}

pub fn new_attr_background(red u16, green u16, blue u16) Attribute {
	return Attribute{pango_attr_background_new(red, green, blue)}
}

pub fn new_attr_strikethrough(strikethrough bool) Attribute {
	return Attribute{pango_attr_strikethrough_new(strikethrough)}
}

pub fn new_attr_strikethrough_color(red u16, green u16, blue u16) Attribute {
	return Attribute{pango_attr_strikethrough_color_new(red, green, blue)}
}

pub fn new_attr_underline(underline Underline) Attribute {
	return Attribute{pango_attr_underline_new(underline.c)}
}

pub fn new_attr_underline_color(red u16, green u16, blue u16) Attribute {
	return Attribute{pango_attr_underline_color_new(red, green, blue)}
}




// 
