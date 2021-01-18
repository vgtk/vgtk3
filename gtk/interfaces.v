module gtk

pub interface IWidget {
	get_gtk_widget() &C.GtkWidget
}

pub interface IContainer {
	add(IWidget)
}
