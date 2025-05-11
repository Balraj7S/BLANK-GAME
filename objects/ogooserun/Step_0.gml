hsp = walksp;  //Seting horizontal speed to walking speed

// Gravity
vsp += grv;


//Jump when on ground and space is pressed
if (keyboard_check_pressed(vk_space) && place_meeting(x, y + 1, ograss)) 
    {
      vsp = jumpsp;  // Set vertical speed for jumping
    }


// horizontal movement 
if (!place_meeting(x + hsp, y, ograss)) 
    {
       x += hsp;
    } 
else 
    {
       hsp = 0; //Stop if hitting a wall
    }
 

//vertical movement
if (!place_meeting(x, y + vsp, ograss))
    {
      y += vsp;
    }
	
else 
{
    vsp = 0; // Stop falling when landing
	while (!place_meeting(x, y + 1, ograss))
    {
        y += 1;
    }
}


// Animation
if (!place_meeting(x, y + 1, ograss)) 
{
    sprite_index = spgoosejump;
    image_speed = 0.4; // controls how fast the flying animation plays
} 
else 
{
    if (hsp == 0) // == means we are asking game maker a question and not asigning it a value
	{
        sprite_index = spgooserun; 
        image_speed = 0.4; // goes through the animations
    } 
	
	else 
	{
        sprite_index = spgooserun;
        image_speed = 0.4; // goes through the animations
    }
}


