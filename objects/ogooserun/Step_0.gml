hsp = walksp;  // Set horizontal speed to walking speed

// Gravity
vsp += grv;

// Jump when on ground and space is pressed
if (keyboard_check_pressed(vk_space) && place_meeting(x, y + 1, ograss)) {
    vsp = jumpsp;  // Set vertical speed for jumping
}

// Horizontal movement (always move right)
if (!place_meeting(x + hsp, y, ograss)) {
    x += hsp;
} else {
    hsp = 0; // Stop if hitting a wall
}

// Vertical movement
if (!place_meeting(x, y + vsp, ograss)) {
    y += vsp;
} else {
    vsp = 0; // Stop falling when landing
	while (!place_meeting(x, y + 1, ograss)) {
    y += 1;
}
}

// Animation
if (!place_meeting(x, y + 1, ograss)) {
    sprite_index = spgoosejump;
    image_speed = 0.3; // Controls how fast the flying animation plays
} else {
    if (hsp == 0) {
        sprite_index = spgooserun; // Or spgooseidle if you have it
        image_speed = 0.3;
    } else {
        sprite_index = spgooserun;
        image_speed = 0.3;
    }
}


