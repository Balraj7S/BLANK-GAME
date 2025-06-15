// Set scrolling speed (used by background objects)
global.goose_speed = 10;

// Gravity
vsp += grv;


// Jump when on ground and space is pressed
if (keyboard_check(vk_space) && place_meeting(x, y + 1, Ograss)) {
    vsp = jumpsp;  // Set vertical speed for jumping
}

if (!place_meeting(x, y + vsp, Ograss)) {
    y += vsp;
} else {
    // Try snapping down gently to "stick" to uneven ground joins
    for (var i = 0; i < 5; i++) {
        if (!place_meeting(x, y + 1, Ograss)) {
            y += 1;
        } else {
            break;
        }
    }
    vsp = 0; // Stop vertical speed after landing
}



// Animation switching
if (!place_meeting(x, y + 1, Ograss)) {
    // In the air
    sprite_index = spkiwijump;
    image_speed = 0.7;

    if (vsp > 0) {
        image_index = 7; // Falling frame (last one in flying sprite)
    }
    // Otherwise: let it cycle through flying frames
} else {
    // On ground
    sprite_index = spkiwirun;
    image_speed = 0.7; // Run animation speed
}



