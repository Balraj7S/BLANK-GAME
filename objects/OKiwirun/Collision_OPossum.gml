if (!global.game_over) 
{
    global.player_health -= 1;

    // Destroy the possum that hit the kiwi
    with (other)
    {
        instance_destroy();
    }

    // Check if health is out
    if (global.player_health <= 0) 
    {
        global.game_over = true;

        // Show the restart and mneu button when the game ends
        instance_create_layer(0, 0, "Instances_1", OGameOverDisplay);
        instance_create_layer(0, 0, "Instances_1", OReturntomenu);

        // Save high score
        if (global.score > global.high_score) 
        {
            global.high_score = global.score;

            var file = file_text_open_write("savefile.txt");
            file_text_write_string(file, string(global.high_score));
            file_text_close(file);
        }
    }
}

