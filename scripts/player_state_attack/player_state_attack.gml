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
		
	}
	
	if (animation_end())
	{
		sprite_index = spr_pengu;
		state = PLAYERSTATE.IDLE;
	}
}