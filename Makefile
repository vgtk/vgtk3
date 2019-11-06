VC=v

build: clean
	$(VC) -g build module $(PWD)/gtk3
clean:
	rm -rf test gtk3.o
test: build
	$(VC) run test.v
