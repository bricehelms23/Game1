/// @description Create event to set pengu move speed, 
// You can write your code in this editor

move_speed = 4;
jump_speed = 16;

move_x = 0;
move_y = 0;

state = PLAYERSTATE.IDLE;

enum PLAYERSTATE 
{
	IDLE,
	ATTACK
}

