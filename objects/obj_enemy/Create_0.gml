/// @description Insert description here
// You can write your code in this editor

state = ENEMYSTATE.IDLE;
hit_by_attack = ds_list_create();

hp = 3;

enum ENEMYSTATE 
{
	IDLE,
	ATTACK,
	DAMAGE
}
