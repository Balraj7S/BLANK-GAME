if (!global.game_over) {
    // Increase score as the player runs
    global.score += 1;

    // Your existing movement and animation code
    global.goose_speed = walksp;

    // Gravity
    vsp += grv;

    // Jumping
    if (keyboard_check(vk_space) && place_meeting(x, y + 1, OGrass)) {
        vsp = jumpsp;
    }

    if (!place_meeting(x, y + vsp, OGrass)) {
        y += vsp;
    } else {
        for (var i = 0; i < 5; i++) {
            if (!place_meeting(x, y + 1, OGrass)) {
                y += 1;
            } else {
                break;
            }
        }
        vsp = 0;
    }

    // Animation switching
    if (!place_meeting(x, y + 1, OGrass)) {
        sprite_index = spkiwijump;
        image_speed = 0.7;
        if (vsp > 0) image_index = 7;
    } else {
        sprite_index = spkiwirun;
        image_speed = 0.7;
    }
}
