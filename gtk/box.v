module gtk

pub struct Box {
	c &GtkWidget
}

pub struct BoxQuery {
	expand    bool
	fill      bool
	padding   u32
	pack_type PackType
}

pub fn new_box(orientation Orientation, space int) Box {
	return Box{gtk_box_new(orientation, space)}
}

pub fn new_hbox(space int) Box {
	return new_box(.horizontal, space)
}

pub fn new_vbox(space int) Box {
	return new_box(.vertical, space)
}

pub fn (b Box) pack_start(child Widgeter, expand bool, fill bool, padding u32) {
	child_ := child.get_gtk_widget()
	gtk_box_pack_start(b.c, child_, expand, fill, padding)
}

pub fn (b Box) pack_end(child Widgeter, expand bool, fill bool, padding u32) {
	child_ := child.get_gtk_widget()
	gtk_box_pack_end(b.c, child_, expand, fill, padding)
}

pub fn (b Box) get_homogeneous() bool {
	return gtk_box_get_homogeneous(b.c)
}

pub fn (b Box) set_homogeneous(homogeneous bool) {
	gtk_box_set_homogeneous(b.c, homogeneous)
}

pub fn (b Box) get_spacing() int {
	return gtk_box_get_spacing(b.c)
}

pub fn (b Box) set_spacing(spacing int) {
	gtk_box_set_spacing(b.c, spacing)
}

pub fn (b Box) reorder_child(child Widgeter, position int) {
	child_ := child.get_gtk_widget()
	gtk_box_reorder_child(b.c, child_, position)
}

pub fn (b Box) query_child_packing(child Widgeter) BoxQuery {
	child_ := child.get_gtk_widget()
	expand := false
	fill := false
	padding := u32(0)
	pack_type := PackType(0)
	gtk_box_query_child_packing(b.c, child_, &expand, &fill, &padding, &pack_type)
	return BoxQuery{ expand, fill, padding, pack_type }
}

pub fn (b Box) set_child_packing(child Widgeter, expand bool, fill bool, padding u32, pack_type PackType) {
	child_ := child.get_gtk_widget()
	gtk_box_set_child_packing(b.c, child_, expand, fill, padding, pack_type)
}

pub fn (b Box) get_baseline_position() BaselinePosition {
	return BaselinePosition(gtk_box_get_baseline_position(b.c))
}

pub fn (b Box) set_baseline_position(position BaselinePosition) {
	gtk_box_set_baseline_position(b.c, position)
}

pub fn (b Box) get_center_widget() &GtkWidget {
	return gtk_box_get_center_widget(b.c)
}

pub fn (b Box) set_center_widget(widget Widgeter) {
	wgt := widget.get_gtk_widget()
	gtk_box_set_center_widget(b.c, wgt)
}

/* INHERITED FROM Widget */
pub fn (b Box) get_halign() Align {
	return gtk_widget_get_halign(b.c)
}

pub fn (b Box) set_halign(align Align) {
	gtk_widget_set_halign(b.c, align)
}

pub fn (b Box) get_valign() Align {
	return gtk_widget_get_valign(b.c)
}

pub fn (b Box) set_valign(align Align) {
	gtk_widget_set_valign(b.c, align)
}

/* INHERITED FROM CONTAINER */

pub fn (b Box) add(widget Widgeter) {
	wgt := widget.get_gtk_widget()
	gtk_container_add(b.c, wgt)
}

pub fn (b Box) remove(widget Widgeter) {
	wgt := widget.get_gtk_widget()
	gtk_container_remove(b.c, wgt)
}

/* IMPLEMENTING GtkOrientable */

pub fn (b Box) set_orientation(orientation Orientation) {
	gtk_orientable_set_orientation(b.c, orientation)
}

pub fn (b Box) get_orientation() Orientation {
	return Orientation(gtk_orientable_get_orientation(b.c))
}

/* IMPLEMENTING Widgeter */

pub fn (b &Box) get_gtk_widget() &GtkWidget {
	return b.c
}
