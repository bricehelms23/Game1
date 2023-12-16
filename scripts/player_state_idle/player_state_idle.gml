// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_idle(move_x){
	key_attack = keyboard_check_pressed(ord("Q"));
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
	
	if (key_attack) state = PLAYERSTATE.ATTACK;
	
}