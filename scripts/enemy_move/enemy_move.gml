// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_move(){
	
	show_debug_message("Moving: x = " + string(x) + ", y = " + string(y));

    // Apply gravity
    if (!place_meeting(x, y + 1, obj_ground_temp)) {
        falling = true;
        jump_speed += gravity;
        if (jump_speed > terminal_velocity) jump_speed = terminal_velocity;
    } else {
        falling = false;
        jump_speed = 0;
    }

    // Check if there's ground ahead
    var ground_ahead = place_meeting(x + sign(move_speed) * (sprite_width / 2 + 1), y + 1, obj_ground_temp);
    if (!ground_ahead && !falling) {
        move_speed *= -1; // Turn around
        direction *= -1;
        image_xscale *= -1;
        show_debug_message("Turning around at edge.");
    }

    // Handle horizontal movement
    if (place_meeting(x + move_speed, y, obj_ground_temp)) {
        show_debug_message("Collision detected ahead. Adjusting position.");
        // Adjust position to be just next to the wall
        while (!place_meeting(x + sign(move_speed), y, obj_ground_temp)) {
            x += sign(move_speed);
        }
        // Now reverse direction
        move_speed *= -1;
        direction *= -1;
        image_xscale *= -1;
        show_debug_message("I've hit a wall and turned around.");
    } else {
        x += move_speed;
    }

    // Apply vertical movement
    y += jump_speed;

    // Prevent falling through the ground
    if (place_meeting(x, y, obj_ground_temp)) {
        while (place_meeting(x, y, obj_ground_temp)) {
            y -= 1;
        }
        jump_speed = 0;
    }
}