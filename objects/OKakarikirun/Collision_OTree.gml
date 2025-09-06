if (!global.game_over)
{
    global.player_health -= 1;

    with (other) instance_destroy();

    if (global.player_health <= 0) 
	{
        global.game_over = true;
// Show lose screen overlay
		instance_create_layer(0, 0, "Instances_1", OLose);
        

        // Save high score
        scr_highscore_save("highscore.save");
    }
}
