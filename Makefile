V ?= v

%.o : %.mod

all: fmt test examples

.PHONY: fmt test examples

fmt:
	$(V) run ./fmt.vsh

clean:
	git clean -xf -- examples

test:
	$(V) test .

examples:
	$(V) ./examples/box.v
	$(V) ./examples/button.v
	$(V) ./examples/basic.v
	$(V) ./examples/dialog.v
	$(V) ./examples/entry.v
	$(V) ./examples/grid.v
	$(V) ./examples/label.v
