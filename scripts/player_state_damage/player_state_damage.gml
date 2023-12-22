// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_damage(){
	sprite_index = spr_pengu_damage_flash;
	//var _count = 0;
	if (animation_end())
	{
		sprite_index = spr_pengu;
		state = PLAYERSTATE.IDLE;
		hp--;
	}
	
	if (hp == 0) 
	{
		instance_destroy();
		obj_game.alarm[0] = 120;
	}
}