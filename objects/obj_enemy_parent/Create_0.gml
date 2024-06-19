/// @description Insert description here
// You can write your code in this editor

move_speed = 2;
jump_speed = 0;
move_speed_push = 0;
jump_speed_push = 0;
fear_of_height = 1;

gravity = 1;  // Gravity value
terminal_velocity = 10;  // Maximum falling speed
falling = false;  // Flag to indicate if the enemy is falling

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
