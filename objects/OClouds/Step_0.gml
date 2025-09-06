
if (!global.game_over)
 {
        x -= global.kakariki_speed / 4;

        if (x < -sprite_get_width(sprite_index))
        {
            x = room_width + 50;
        }
 }

