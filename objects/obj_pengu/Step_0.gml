/// @description Insert description here
// You can write your code in this editor

//move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
//move_x *= move_speed;


var _move_input = keyboard_check(vk_right) - keyboard_check(vk_left);

if (_move_input != 0)
{
	move_speed += _move_input;
	move_speed = clamp(move_speed, -max_move_speed, max_move_speed);
}
else
{
	move_speed = 0;	
}

if (!place_meeting(x, y+1, obj_ground_temp))
{
	jump_speed += _gravity;	
}

if (place_meeting(x, y+1, obj_ground_temp))
{	
	jump_count = max_jumps;
}

if ((keyboard_check_pressed(vk_space)) && (jump_count > 0))
{
	jump_speed = -12
	show_debug_message(jump_count);
	jump_count = jump_count - 1;
}

move();

if (_move_input != 0) 
{
	image_xscale = sign(_move_input);
}

switch (state) 
{
	case PLAYERSTATE.IDLE: player_state_idle(); break;
	case PLAYERSTATE.ATTACK: player_state_attack(); break;
	case PLAYERSTATE.DAMAGE: player_state_damage(); break;
}

