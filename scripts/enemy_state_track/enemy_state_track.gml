// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_state_track(){
	//image_xscale = -sign(move_speed);
	
	if (object_exists(obj_pengu))
	{
		if (collision_circle(x, y, 300, obj_pengu, false, true))
		{
		
			var _dir = point_direction(x, y, obj_pengu.x, obj_pengu.y);
			obj_enemy_parent.move_speed = lengthdir_x(4, _dir);
			obj_enemy_parent.jump_speed = lengthdir_y(2, _dir);
			enemy_move();
	
			if (collision_circle(x, y, 50, obj_pengu, false, true))
			{	
				//direction = point_direction(x, y, obj_pengu.x, obj_pengu.y);
				image_xscale = sign(x - obj_pengu.x);
				state = ENEMYSTATE.ATTACK;
				obj_enemy_parent.move_speed = 0;
				obj_enemy_parent.jump_speed = 0;
			}
		}
	
		else 
		{
			show_debug_message("I can't see you");
			state = ENEMYSTATE.IDLE;
		}
	}
}