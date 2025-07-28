var bx = display_get_gui_width() / 2 - button_width / 2;
var by = display_get_gui_height() / 2;
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// Check if mouse is over button
if (mx > bx && mx < bx + button_width &&
    my > by && my < by + button_height)
	{
    room_restart();
	}


