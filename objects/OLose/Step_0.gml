if (global.game_over) 
{
    if (keyboard_check_pressed(ord("R"))) //Restarts game
	{
        room_restart();
    }
    if (keyboard_check_pressed(ord("Q"))) //Quits game
	{
        game_end();
    }
	if (keyboard_check_pressed(ord("M"))) //returns back to menu
	{
        room_goto(Rmenu)
    }
}
