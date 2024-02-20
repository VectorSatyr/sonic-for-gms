var _buffer = buffer_load("input.json");
if (_buffer != -1) {
	var _string = buffer_read(_buffer, buffer_text);
	buffer_delete(_buffer);
	if (input_system_verify(_string)) {
		input_system_import(_string);
	}
}