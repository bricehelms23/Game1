/// @description Insert description here
// You can write your code in this editor

move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;

switch (state) 
{
	case PLAYERSTATE.IDLE: player_state_idle(move_x); break;
	case PLAYERSTATE.ATTACK: player_state_attack(); break;
}

