x -= 5; // Move left

if (x < -sprite_width) {
    instance_destroy(); // Remove if off screen
}
