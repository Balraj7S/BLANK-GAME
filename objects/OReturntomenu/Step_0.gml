var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

var bx = display_get_gui_width() / 2 - 50;
var by = display_get_gui_height() / 2 + 60;
var bw = 120;
var bh = 40;

if (mx > bx && mx < bx + bw && my > by && my < by + bh) {
    if (mouse_check_button_pressed(mb_left))
	{
        room_goto_previous(); 
		
    }
}
