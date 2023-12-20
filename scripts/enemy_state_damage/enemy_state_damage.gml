// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_state_damage(){
	sprite_index = spr_enemy_damage_flash;
	//var _count = 0;
	if (animation_end())
	{
		sprite_index = spr_enemy;
		state = ENEMYSTATE.IDLE;
		hp--;
	}
	
	if (hp == 0) 
	{
		instance_destroy();
	}
}