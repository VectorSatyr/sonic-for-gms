/// @description Wait
if (game_is_running())
{
    if (duration > 0)
	{
        --duration;
        if (duration <= 0 or input_check_pressed("start"))
		{
			duration = 0;
            game_screen_fade_out(BlackFadeShd, 22, TitleScreenRoom);
        }
    }
}