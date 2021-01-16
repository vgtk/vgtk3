import os

const vexe = os.getenv('VEXE')

v_files := os.walk_ext('./', '.v')

for v_file in v_files {
	if v_file.contains('./examples/') {
		continue
	}
	if 0 != os.system('$vexe fmt $v_file -w') {
    	panic('could not format $v_file')
    }
}
