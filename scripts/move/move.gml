// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move(){
	if (place_meeting(x+move_speed, y, obj_ground_temp))
	{
		while (!place_meeting(x+sign(move_speed), y, obj_ground_temp))
		{
			x += sign(move_speed);	
		}
		move_speed = 0;
	}

	x += move_speed;

	if (place_meeting(x, y+jump_speed, obj_ground_temp))
	{
		while (!place_meeting(x, y+sign(jump_speed), obj_ground_temp))
		{
			y += sign(jump_speed);	
		}
		jump_speed = 0;
	}
	
	y += jump_speed;
}