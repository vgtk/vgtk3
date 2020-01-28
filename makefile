VC=v

test:
	v test tests
	v box_demo.v
	v button_demo.v
	v demo.v
	v dialog_demo.v
	v entry_demo.v
	v grid_demo.v
	v label_demo.v
.PHONY: test
