draw_set_font(fntScore); // Set the custom font
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

draw_text(32, 32, "Score: " + string(global.score));
draw_text(32, 64, "High Score: " + string(global.high_score));