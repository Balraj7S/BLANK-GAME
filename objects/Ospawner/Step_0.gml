spawn_timer -= 1;

if (spawn_timer <= 0) {
    // Create a new possum
    var spawn_x = room_width + irandom_range(100, 300); // Random spacing
    var spawn_y = 532; // Fixed y so it spawns on the grass

    instance_create_layer(spawn_x, spawn_y, layer, Opossum); // Use same layer

    spawn_timer = 30; // Reset timer
}
