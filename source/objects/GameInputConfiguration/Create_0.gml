load = function () {
	var _buffer = buffer_load(fname);
	if (_buffer != -1) {
		var _string = buffer_read(_buffer, buffer_text);
		buffer_delete(_buffer);
		if (input_system_verify(_string)) {
			input_system_import(_string);
		}
	}
};
save = function () {
	var _string = input_system_export(true, true);
	var _buffer = buffer_create(string_byte_length(_string), buffer_grow, 1);
	buffer_write(_buffer, buffer_text, _string);
	buffer_save(_buffer, fname);
	buffer_delete(_buffer);
};