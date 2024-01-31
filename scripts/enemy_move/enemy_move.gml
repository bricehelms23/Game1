// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_move(){
	
	if ((fear_of_height) && !position_meeting(x+(sprite_width/2), y+(sprite_height), obj_ground_temp))
	{
		//direction *= -1; 
		show_debug_message("I'm scared");
		image_xscale *= -1;
		move_speed *= -1;
	}
	
	if (place_meeting(round(x+move_speed), round(y), obj_ground_temp))
	{
		while (!place_meeting(round(x+sign(move_speed)), round(y), obj_ground_temp))
		{
			x += sign(move_speed);	
		}
		move_speed = 0;
	}

	x += move_speed;

	if (place_meeting(round(x), round(y+jump_speed), obj_ground_temp))
	{
		while (!place_meeting(round(x), round(y+sign(jump_speed)), obj_ground_temp))
		{
			y += sign(jump_speed);	
		}
		jump_speed = 0;
	}
	
	y += jump_speed;
}