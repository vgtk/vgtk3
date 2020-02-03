module gtk

pub struct Requisition {
	c &GtkRequisition
}

pub fn new_requisition() Requisition {
	return Requisition{gtk_requisition_new()}
}

pub fn (r Requisition) copy() Requisition {
	return Requisition{gtk_requisition_copy(r.c)}
}

pub fn (r Requisition) free() {
	gtk_requisition_free(r.c)
}
