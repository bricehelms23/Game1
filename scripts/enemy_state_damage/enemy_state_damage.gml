// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_state_damage(){
	show_debug_message("State: DAMAGE");
    if (sprite_index != spr_enemy_damage_flash) {
        sprite_index = spr_enemy_damage_flash;
    }

    if (animation_end()) {
        sprite_index = spr_enemy;
        state = ENEMYSTATE.IDLE;
    }

    if (hp <= 0) {
        instance_destroy();
    }
}