// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_state_idle(){
	
	if (collision_circle(x, y, 100, obj_pengu, false, true))
	{	
		direction = point_direction(x, y, obj_pengu.x, obj_pengu.y);
		show_debug_message(direction);
		show_debug_message("I can see you");
		state = ENEMYSTATE.TRACK;
		
	}
	//if (collision_line(x, y, x - 50, y, obj_pengu, false, true))
	//{
	//	show_debug_message("I can see you");
	//	state = ENEMYSTATE.ATTACK;
	//}
	
	//ds_list_clear(hit_by_attack);
}