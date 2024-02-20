/// @description Navigate (Desktop)
if (game_is_running())
{
	if (selected and owner.enabled and owner.alarm[0] <= 0)
	{
		if (event_shortcut != "" and input_check_pressed(event_shortcut))
		{
			event_user(2);
			instance_perform_user_event(owner, 2);
		}
		else if (input_check_pressed(event_ascend))
		{
		    event_user(0);
		}
		else if (input_check_pressed(event_descend))
		{
		    event_user(1);
		}
	}
}