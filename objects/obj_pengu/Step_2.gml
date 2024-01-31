/// @description Insert description here
// You can write your code in this editor

var _half_view_width = camera_get_view_height(view_camera[0]) / 2;
var _half_view_height =  camera_get_view_width(view_camera[0]) / 2;

camera_set_view_pos(view_camera[0], x - _half_view_width, y - _half_view_height);
