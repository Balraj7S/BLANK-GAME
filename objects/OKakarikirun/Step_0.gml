if (!global.game_over) {
    // Increase score
    global.score += 1;

    // Update high score if beaten
    if (global.score > global.high_score) {
        global.high_score = global.score;
    }

    // Movement & gravity
    global.goose_speed = walksp;
    vsp += grv;

    // Jumping
    if (keyboard_check_pressed(vk_space)) {
        vsp = jumpsp;
    }

    if (!place_meeting(x, y + vsp, OGrass)) {
        y += vsp;
        if (y < 10) {
            y = 10;
            vsp = 0;
        }
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

    // Animation
    if (!place_meeting(x, y + 1, OGrass)) {
        sprite_index = SpKakarikijump;
        image_speed = 0.7;
    } else {
        sprite_index = SpKakarikirun;
        image_speed = 0.8;
    }
}
