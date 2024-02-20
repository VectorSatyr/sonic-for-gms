var _string = input_system_export(true, true);
var _buffer = buffer_create(string_byte_length(_string), buffer_grow, 1);
buffer_write(_buffer, buffer_text, _string);
buffer_save(_buffer, fname);
buffer_delete(_buffer);