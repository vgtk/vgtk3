import glib

fn test_gstring_append() {
	str := glib.new_string('Hey...')
	str.append(' What')
	str.append(' are ')
	str.append('you ')
	str.append('doing?')
	assert str.str() == 'Hey... What are you doing?'
	assert str.str().len == 26

	str2 := glib.new_string('')
	str2.append('Vgtk is')
	str2.append('')
	str2.append(' awesome   !!!')
	assert str2.str() == 'Vgtk is awesome   !!!'
	assert str2.str().len == 21
}

fn test_gstring_new_len() {
	str := glib.new_string_len('dddddd', 90)
	assert str.str().len == 6
	assert str.str() == 'dddddd'
}
