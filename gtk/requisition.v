module gtk

pub struct Requisition {
	c &C.GtkRequisition
}

pub fn new_requisition() Requisition {
	return Requisition{C.gtk_requisition_new()}
}

pub fn (r Requisition) copy() Requisition {
	return Requisition{C.gtk_requisition_copy(r.c)}
}

[unsafe]
pub fn (mut r Requisition) free() {
	C.gtk_requisition_free(r.c)
}
