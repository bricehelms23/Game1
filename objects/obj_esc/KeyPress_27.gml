/// @description Insert description here
// You can write your code in this editor

if (global.current_room == 1) {
	room_goto(rm_room1);
	global.current_room = 2;
}
else if (global.current_room == 2) {
	room_goto(rm_settings);
	global.current_room = 1
}
