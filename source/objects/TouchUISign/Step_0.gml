/// @description Check for device touch
touched = false;
if (enabled) {
	for (var _n = 0; _n < INPUT_MAX_TOUCHPOINTS; ++_n) {
		if (device_mouse_check_button(_n, mb_left)) {
			var _x = device_mouse_x_to_gui(_n);
			var _y = device_mouse_y_to_gui(_n);
			with (GUILayer) {
				_x *= game_width / gui_width;
				_y *= game_height / gui_height;
			}
			if (device == _n or collision_point(_x, _y, id, true, false)) {
				touched = true;
				device = _n;
				posX = _x;
				posY = _y;
				event_user(0);
			}
		}
	}
}
if (not touched) {
	device = -1;
} 