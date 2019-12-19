VC=v

clean:
	rm -rf tests/gtk
test: clean
	cp -r gtk tests/gtk
	v test tests
