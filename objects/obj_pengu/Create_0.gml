/// @description Create event to set pengu move speed, 
// You can write your code in this editor

move_speed = 0;
max_move_speed = 6;
jump_speed = 0;
_gravity = 1;
jump_count = 0;
max_jumps = 2;

move_x = 0;
//move_y = 0;

hp = 5;

state = PLAYERSTATE.IDLE;
hit_by_attack = ds_list_create();

enum PLAYERSTATE 
{
	IDLE,
	ATTACK,
	DAMAGE
}

