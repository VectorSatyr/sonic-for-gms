/// @description Register
var len = point_distance(x, y, posX, posY);
if (len >= deadzone) {
	var dir = point_direction(x, y, posX, posY);
	if (abs(angle_difference(dir, 0)) <= touch_angle) {
		input_verb_set("right", 1);
	}
	if (abs(angle_difference(dir, 90)) <= touch_angle) {
		input_verb_set("up", 1);
	}
	if (abs(angle_difference(dir, 180)) <= touch_angle) {
		input_verb_set("left", 1);
	}
	if (abs(angle_difference(dir, 270)) <= touch_angle) {
		input_verb_set("down", 1);
	}
}