/// @description Command
if (game_is_running()) {
	var _channel = input_channel;
	switch (state) {
	case "normal":
		with (character) {
			// on-time input
			input_up_pressed = input_check_pressed("up", _channel);
			input_down_pressed = input_check_pressed("down", _channel);
			input_left_pressed = input_check_pressed("left", _channel);
			input_right_pressed = input_check_pressed("right", _channel);
			input_action_pressed = input_check_pressed(["a", "b", "c"], _channel);

			// continuous input
			input_up = input_check("up", _channel);
			input_down = input_check("down", _channel);
			input_left = input_check("left", _channel);
			input_right = input_check("right", _channel);
			input_action = input_check(["a", "b", "c"], _channel);

			// contradictory input negotiation
			if (input_up and input_down) {
				input_up = false;
				input_down = false;
			}
			if (input_left and input_right) {
				input_left = false;
				input_right = false;
			}

			// horizontal axis value
			if (not (input_left or input_right)) {
				horizontal_axis_value = 0;
			} else if (input_left) {
				horizontal_axis_value = -1;
			} else if (input_right) {
				horizontal_axis_value = 1;
			}
		}
		break;

	case "leaving":
		with (character) {
			input_up_pressed = false;
			input_down_pressed = false;
			input_left_pressed = false;
			input_right_pressed = false;
			input_action_pressed = false;
			input_up = false;
			input_down = false;
			input_left = false;
			input_right = true;
			input_action = false;
			horizontal_axis_value = 1;
		}
		break;
	}
}