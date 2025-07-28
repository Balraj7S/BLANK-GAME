var total_hearts = 3;

for (var i = 0; i < total_hearts; i++) {
    var x_pos = x_start + i * spacing;

    if (i < global.player_health) {
        draw_sprite(heart_full_sprite, 0, x_pos, y_start);
    } else {
        draw_sprite(heart_empty_sprite, 0, x_pos, y_start);
    }
}
