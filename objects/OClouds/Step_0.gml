if (!global.game_over)
{
    x -= global.goose_speed / 4;

    if (x < -sprite_width) 
	{
        x = room_width + 50;
    }
}
