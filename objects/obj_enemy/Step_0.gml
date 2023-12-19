/// @description Insert description here
// You can write your code in this editor

switch (state) 
{
	case ENEMYSTATE.IDLE: enemy_state_idle(); break;
	//case ENEMYSTATE.ATTACK: enemy_state_attack(); break;
	case ENEMYSTATE.DEAD: enemy_state_dead(); break;
}
