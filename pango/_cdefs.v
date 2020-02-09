module pango

import glib

// struct C.PangoAttrType
struct C.PangoAttrClass
struct C.PangoAttribute
struct C.PangoLanguage
struct C.PangoStyle
struct C.PangoVariant
struct C.PangoStretch
struct C.PangoWeight
struct C.PangoFontDescription
struct C.PangoUnderline
struct C.PangoRectangle
struct C.GDestroyNotify
struct C.PangoGravity
struct C.PangoGravityHint
struct C.PangoShowFlags
struct C.PangoAttrList
struct C.PangoAttrIterator
struct C.PangoAttrType
struct C.PangoAttrFilterFunc

fn C.pango_attr_type_register(charptr) int /* PangoAttrType */
fn C.pango_attr_type_get_name(int /* PangoAttrType */) charptr

fn C.pango_attribute_init(&PangoAttribute, &PangoAttrClass)
fn C.pango_attribute_copy(&PangoAttribute) &PangoAttribute
fn C.pango_attribute_equal(&PangoAttribute, &PangoAttribute) bool
fn C.pango_attribute_destroy(&PangoAttribute) 

fn C.pango_attr_language_new(&PangoLanguage) &PangoAttribute
fn C.pango_attr_family_new(&char) &PangoAttribute
fn C.pango_attr_style_new(PangoStyle) &PangoAttribute
fn C.pango_attr_variant_new(PangoVariant) &PangoAttribute
fn C.pango_attr_stretch_new(PangoStretch) &PangoAttribute
fn C.pango_attr_weight_new(PangoWeight) &PangoAttribute
fn C.pango_attr_size_new(int) &PangoAttribute
fn C.pango_attr_size_new_absolute(int) &PangoAttribute
fn C.pango_attr_font_desc_new(&PangoFontDescription) &PangoAttribute
fn C.pango_attr_foreground_new(u32, u32, u32) &PangoAttribute
fn C.pango_attr_background_new(u32, u32, u32) &PangoAttribute
fn C.pango_attr_strikethrough_new(bool) &PangoAttribute
fn C.pango_attr_strikethrough_color_new(u32, u32, u32) &PangoAttribute
fn C.pango_attr_underline_new(PangoUnderline) &PangoAttribute
fn C.pango_attr_underline_color_new(u32, u32, u32) &PangoAttribute
fn C.pango_attr_shape_new(&PangoRectangle, &PangoRectangle) &PangoAttribute
fn C.pango_attr_shape_new_with_data(&PangoRectangle, &PangoRectangle, voidptr, voidptr, GDestroyNotify) &PangoAttribute
fn C.pango_attr_scale_new(f32) &PangoAttribute
fn C.pango_attr_rise_new(int) &PangoAttribute
fn C.pango_attr_letter_spacing_new(int) &PangoAttribute
fn C.pango_attr_fallback_new(bool) &PangoAttribute
fn C.pango_attr_gravity_new(PangoGravity) &PangoAttribute
fn C.pango_attr_gravity_hint_new(PangoGravityHint) &PangoAttribute
fn C.pango_attr_font_features_new(&charptr) &PangoAttribute
fn C.pango_attr_foreground_alpha_new(u32) &PangoAttribute
fn C.pango_attr_background_alpha_new(u32) &PangoAttribute
fn C.pango_attr_allow_breaks_new(bool) &PangoAttribute
fn C.pango_attr_insert_hyphens_new(bool) &PangoAttribute
fn C.pango_attr_show_new(PangoShowFlags) &PangoAttribute
fn C.pango_attr_list_new() &PangoAttrList
fn C.pango_attr_list_ref(&PangoAttrList) &PangoAttrList
fn C.pango_attr_list_unref(&PangoAttrList)
fn C.pango_attr_list_copy(&PangoAttrList) &PangoAttrList
fn C.pango_attr_list_insert(&PangoAttrList, &PangoAttribute)
fn C.pango_attr_list_insert_before(&PangoAttrList, &PangoAttribute)
fn C.pango_attr_list_change(&PangoAttrList, &PangoAttribute)
fn C.pango_attr_list_splice(&PangoAttrList, &PangoAttrList, int, int)
fn C.pango_attr_list_filter(&PangoAttrList, PangoAttrFilterFunc, voidptr) &PangoAttrList
fn C.pango_attr_list_update(&PangoAttrList, int, int, int)
fn C.pango_attr_list_get_attributes(&PangoAttrList) &GSList
fn C.pango_attr_list_get_iterator(&PangoAttrList) &PangoAttrIterator
fn C.pango_attr_iterator_copy(&PangoAttrIterator) &PangoAttrIterator
fn C.pango_attr_iterator_next(&PangoAttrIterator) bool
fn C.pango_attr_iterator_range(&PangoAttrIterator, &int, &int)
fn C.pango_attr_iterator_get(&PangoAttrIterator, PangoAttrType) &PangoAttribute
fn C.pango_attr_iterator_get_font(&PangoAttrIterator, &PangoFontDescription, &PangoLanguage, &GSList)
fn C.pango_attr_iterator_get_attrs(&PangoAttrIterator) &GSList
fn C.pango_attr_iterator_destroy(&PangoAttrIterator)
