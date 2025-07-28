// Random x-position: wider and less predictable
var spawn_offset = random_range(100, 500);
var spawn_x = (room_width + 64) + spawn_offset;

// Fixed y-position at ground level
var spawn_y = 508;

// Create possum
instance_create_layer(spawn_x, spawn_y, "Instances_1", OPossum);

// Set Alarm 1 again to keep spawning
alarm[1] = random_range(room_speed * 1.5, room_speed * 4);
