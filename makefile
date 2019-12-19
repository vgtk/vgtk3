VC=v

clean:
	rm -rf tests/gtk
test: clean
	cp -rf gtk tests/gtk
