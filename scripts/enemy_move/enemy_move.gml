// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_move(){
	
	if ((fear_of_height) && !position_meeting(x-(sprite_width/3), y+(sprite_height), obj_ground_temp))
	{
		direction *= -1; 
		show_debug_message("I'm scared");
		//image_xscale *= -1;
		_move_speed *= -1;
		_jump_speed = 0;
		state = ENEMYSTATE.IDLE;
	}
	
	if (place_meeting(round(x+_move_speed), round(y), obj_ground_temp))
	{
		while (!place_meeting(round(x+sign(_move_speed)), round(y), obj_ground_temp))
		{
			x += sign(_move_speed);	
		}
		_move_speed = 0;
	}

	x += _move_speed;

	if (place_meeting(round(x), round(y+_jump_speed), obj_ground_temp))
	{
		while (!place_meeting(round(x), round(y+sign(_jump_speed)), obj_ground_temp))
		{
			y += sign(_jump_speed);	
		}
		_jump_speed = 0;
	}
	
	y += _jump_speed;
}