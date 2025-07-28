if (global.game_over) {
    draw_set_font(fnt_score); // Optional if using custom font
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);

    var cx = display_get_gui_width() / 2;
    var cy = display_get_gui_height() / 2;

    draw_text(cx, cy - 40, "Score: " + string(global.score));
    draw_text(cx, cy + 10, "High Score: " + string(global.highscore));
}
