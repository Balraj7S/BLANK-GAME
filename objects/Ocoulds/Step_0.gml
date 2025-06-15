x -= global.goose_speed / 4;

if (x < -sprite_width) {
    x = room_width + 50; // moves it just off the right edge, with a fixed gap
}
