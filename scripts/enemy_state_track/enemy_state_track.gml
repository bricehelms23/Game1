// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_state_track(){
	show_debug_message("State: TRACK");
    if (object_exists(obj_pengu)) {
        if (collision_circle(x, y, 300, obj_pengu, false, true)) {
            var _dir = point_direction(x, y, obj_pengu.x, obj_pengu.y);
            move_speed = lengthdir_x(4, _dir);
            jump_speed = lengthdir_y(2, _dir);
            enemy_move();

            if (collision_circle(x, y, 50, obj_pengu, false, true)) {
                image_xscale = sign(x - obj_pengu.x);
                state = ENEMYSTATE.ATTACK;
                move_speed = 0;
                jump_speed = 0;
            }
        } else {
            show_debug_message("I can't see you");
            move_speed = 2;
            jump_speed = 0;
            state = ENEMYSTATE.IDLE;
        }
    }
}