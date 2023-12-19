// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_attack(){
	
	if (place_meeting(x, y + 2, obj_ground_temp))
	{
		move_y = 0;
		if (keyboard_check(vk_space))
		{
		move_y = -jump_speed;
		}
	}
	else if (move_y < 10) 
	{
		move_y += 1;
	}

	move_and_collide(move_x, move_y, obj_ground_temp)

	if (move_x != 0) 
	{
		image_xscale = sign(move_x);
	}
	
	if (sprite_index != spr_pengu_attack) 
	{
		sprite_index = spr_pengu_attack;
		image_index = 0;
		ds_list_clear(hit_by_attack);
	}
	
	mask_index = spr_pengu_attack_hb;
	var _hit_by_attack_now = ds_list_create();
	var _hits = instance_place_list(x, y, obj_enemy, _hit_by_attack_now, false);
	
	if (_hits > 0)
	{
		for (var _i = 0; _i < _hits; _i++) 
		{
			var _hit_id = _hit_by_attack_now[| _i];
			if (ds_list_find_index(hit_by_attack, _hit_id) == -1)
			{
				ds_list_add(hit_by_attack, _hit_id);
				with (_hit_id)
				{
					enemy_hit();	
				}
			}
		}
	}
	
	ds_list_destroy(_hit_by_attack_now);
	mask_index = spr_pengu;
	
	if (animation_end())
	{
		sprite_index = spr_pengu;
		state = PLAYERSTATE.IDLE;
	}
}