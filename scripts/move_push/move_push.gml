// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_push(){
	if (place_meeting(x+move_speed_push, y, obj_ground_temp))
	{
		while (!place_meeting(x+sign(move_speed_push), y, obj_ground_temp))
		{
			x += sign(move_speed_push);	
		}
		move_speed_push = 0;
	}

	x += move_speed_push;

	if (place_meeting(x, y+jump_speed_push, obj_ground_temp))
	{
		while (!place_meeting(x, y+sign(jump_speed_push), obj_ground_temp))
		{
			y += sign(jump_speed_push);	
		}
		jump_speed_push = 0;
	}
	
	y += jump_speed_push;
}