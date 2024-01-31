/// @description Insert description here
// You can write your code in this editor

var _move_speed;
var _jump_speed;
move_speed_push = 0;
jump_speed_push = 0;
fear_of_height = 1;

state = ENEMYSTATE.IDLE;
hit_by_attack = ds_list_create();

hp = 3;

enum ENEMYSTATE 
{
	IDLE,
	ATTACK,
	DAMAGE,
	TRACK
}
