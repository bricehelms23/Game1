/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_circle(x, y, 50, true);
draw_circle(x, y, 100, true);
draw_circle(x+(sprite_width), y+(sprite_height)+25, 10, true);


// Draw a filled circle at the enemy's position
draw_circle(x, y + 50, 5, false);

