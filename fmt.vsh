import os

v_files := os.walk_ext('./', '.v')
for v_file in v_files {
	if v_file.contains('./examples/') {
		continue
	}
	os.exec('v fmt $v_file -w') ?
}
