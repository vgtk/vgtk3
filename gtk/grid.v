module gtk

pub struct Grid {
	c &C.GtkWidget
}

pub fn new_grid() Grid {
	return Grid{C.gtk_grid_new()}
}

pub fn (g Grid) attach(child Widgeter, left int, top int, width int, height int) {
	wgt := child.get_gtk_widget()
	C.gtk_grid_attach(g.c, wgt, left, top, width, height)
}

pub fn (g Grid) attach_next_to(child Widgeter, sibling Widgeter, side Position, width int, height int) {
	child_ := child.get_gtk_widget()
	sibling_ := sibling.get_gtk_widget()
	C.gtk_grid_attach_next_to(g.c, child_, sibling_, side, width, height)
}

pub fn (g Grid) get_child_at(left int, top int) &C.GtkWidget {
	return C.gtk_grid_get_child_at(g.c, left, top)
}

pub fn (g Grid) insert_row(position int) {
	C.gtk_grid_insert_row(g.c, position)
}

pub fn (g Grid) insert_column(position int) {
	C.gtk_grid_insert_column(g.c, position)
}

pub fn (g Grid) remove_row(position int) {
	C.gtk_grid_remove_row(g.c, position)
}

pub fn (g Grid) remove_column(position int) {
	C.gtk_grid_remove_column(g.c, position)
}

pub fn (g Grid) insert_next_to(sibling Widgeter, side Position) {
	sibling_ := sibling.get_gtk_widget()
	C.gtk_grid_insert_next_to(g.c, sibling_, side)
}

pub fn (g Grid) set_row_homogeneous(homogeneous bool) {
	C.gtk_grid_set_row_homogeneous(g.c, homogeneous)
}

pub fn (g Grid) get_row_homogeneous() bool {
	return C.gtk_grid_get_row_homogeneous(g.c)
}

pub fn (g Grid) set_row_spacing(spacing u32) {
	C.gtk_grid_set_row_spacing(g.c, spacing)
}

pub fn (g Grid) get_row_spacing() u32 {
	return C.gtk_grid_get_row_spacing(g.c)
}

pub fn (g Grid) set_column_homogeneous(homogeneous bool) {
	C.gtk_grid_set_column_homogeneous(g.c, homogeneous)
}

pub fn (g Grid) get_column_homogeneous() bool {
	return C.gtk_grid_get_column_homogeneous(g.c)
}

pub fn (g Grid) set_column_spacing(spacing u32) {
	C.gtk_grid_set_column_spacing(g.c, spacing)
}

pub fn (g Grid) get_column_spacing() u32 {
	return C.gtk_grid_get_column_spacing(g.c)
}

pub fn (g Grid) get_baseline_row() int {
	return C.gtk_grid_get_baseline_row(g.c)
}

pub fn (g Grid) set_baseline_row(row int) {
	C.gtk_grid_set_baseline_row(g.c, row)
}

pub fn (g Grid) get_row_baseline_position(row int) BaselinePosition {
	return BaselinePosition(C.gtk_grid_get_row_baseline_position(g.c, row))
}

pub fn (g Grid) set_row_baseline_position(row int, pos BaselinePosition) {
	C.gtk_grid_set_row_baseline_position(g.c, row, pos)
}

// INHERITED FROM CONTAINER
pub fn (g Grid) add(widget Widgeter) {
	wgt := widget.get_gtk_widget()
	C.gtk_container_add(g.c, wgt)
}

pub fn (g Grid) remove(widget Widgeter) {
	wgt := widget.get_gtk_widget()
	C.gtk_container_remove(g.c, wgt)
}

// IMPLEMENTING GtkOrientable
pub fn (g Grid) set_orientation(orientation Orientation) {
	C.gtk_orientable_set_orientation(g.c, orientation)
}

pub fn (g Grid) get_orientation() Orientation {
	return Orientation(C.gtk_orientable_get_orientation(g.c))
}

// IMPLEMENTING Widgeter
pub fn (g &Grid) get_gtk_widget() &C.GtkWidget {
	return g.c
}
