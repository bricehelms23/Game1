// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_move(){
	
	if ((fear_of_height) && !position_meeting(x+(sprite_width/3), y+(sprite_height), obj_ground_temp))
	{
		if (collision_circle(x, y, 50, obj_pengu, false, true))
		{
			direction *= -1; 
			image_xscale *= -1;
			move_speed *= -1;
			jump_speed = 0;
			show_debug_message("I see the enemy, but im scared.");
			//state = ENEMYSTATE.IDLE;
		}
		else
		{
			direction *= -1; 
			show_debug_message("I'm scared");
			image_xscale *= -1;
			move_speed *= -1;
			jump_speed = 0;
			//state = ENEMYSTATE.IDLE;
		}
	}
	
	
	
	if (place_meeting(round(x+move_speed), round(y), obj_ground_temp))
	{
		while (!place_meeting(round(x+sign(move_speed)), round(y), obj_ground_temp))
		{
			x += sign(move_speed);	
		}
		if (collision_circle(x, y, 50, obj_pengu, false, true))
		{
			move_speed = 0;
			show_debug_message("I see the enemy, but im at a wall.");
		}
		else
		{
			//while (!place_meeting(round(x+sign(move_speed)), round(y), obj_ground_temp))
			//{
			//	x += sign(move_speed);	
			//}
			show_debug_message("I've hit a wall");
			move_speed *= -1;
			direction *= -1;
			image_xscale *= -1;
		}
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