// Menu button position and size
var bx = display_get_gui_width() / 2 - 50;
var by = display_get_gui_height() / 2 + 60; // Lower than Restart button
var bw = 120;
var bh = 40;

// Draw button
draw_set_color(c_white);
draw_rectangle(bx, by, bx + bw, by + bh, false);

// Draw label
draw_set_color(c_black);
draw_text(bx + 10, by + 8, "Main Menu");
