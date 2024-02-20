/// @description Wait
if (timer > 0)
{
	--timer;
	if (timer <= 0 or input_check_pressed("start"))
	{
		timer = 0;
		event_user(0); // proceed
	}
}