draw_set_font(fntscore); // Set the custom font
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

// Always show current score
draw_text(20, 20, "Score: " + string(global.score));

// Always show high score
draw_text(20, 50, "High Score: " + string(global.high_score));
