// Set scrolling speed (used by background objects)
global.goose_speed = 8;

// Gravity
vsp += grv;

// Jump when on ground and space is pressed
if (keyboard_check(vk_space) && place_meeting(x, y + 1, ograss)) {
    vsp = jumpsp;  // Set vertical speed for jumping
}

// Vertical movement
if (!place_meeting(x, y + vsp, ograss)) {
    y += vsp;
} else {
    vsp = 0; // Stop falling when landing
    // Snap to ground to avoid hovering
    while (!place_meeting(x, y + 1, ograss)) {
        y += 1;
    }
}

// Animation switching
if (!place_meeting(x, y + 1, ograss)) {
    // In the air
    sprite_index = spgoosejump;
    image_speed = 0.4;

    if (vsp > 0) {
        image_index = 8; // Falling frame (last one in flying sprite)
    }
    // Otherwise: let it cycle through flying frames
} else {
    // On ground
    sprite_index = spgooserun;
    image_speed = 0.4; // Run animation speed
}



