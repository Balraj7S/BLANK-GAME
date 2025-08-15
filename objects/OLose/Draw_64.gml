if (global.game_over) {
    // Fade background
    draw_set_color(c_black);
    draw_set_alpha(0.7);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);

    // Center variables
    var cx = display_get_gui_width() * 0.5;
    var cy = display_get_gui_height() * 0.5;

    // Main "YOU LOSE" text
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fntMenu); // Use a large menu font
    draw_text(cx, cy - 80, "YOU LOSE");

    // Show score + high score
    draw_set_font(fntScore); // Use your score font
    draw_text(cx, cy - 20, "Score: " + string(global.score));
    draw_text(cx, cy + 20, "High Score: " + string(global.high_score));

    // Instructions
    draw_set_font(fntSmall); // Use a smaller font for instructions
    draw_text(cx, cy + 70, "Press R to Restart");
    draw_text(cx, cy + 100, "Press Q to Quit");
}
