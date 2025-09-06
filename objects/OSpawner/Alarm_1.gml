// Spawn just outside the right side of the room
var spawn_x = room_width + 64;

// Possum (ground enemy)
var spawn_y_ground = 571;
instance_create_layer(spawn_x, spawn_y_ground, "Obstacles", OPossum);

// Tree (flying enemy) - always spawn
var spawn_y_flying = random_range(20, 350); // random height between 20 and 350
instance_create_layer(spawn_x, spawn_y_flying, "Obstacles", OTree);

// Reset Alarm 1 to spawn again
alarm[1] = random_range(room_speed * 1.5, room_speed * 4);
