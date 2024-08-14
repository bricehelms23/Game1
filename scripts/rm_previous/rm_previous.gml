// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rm_previous(room_id){
	global.previous_room = room;
	room_goto(room_id);
}