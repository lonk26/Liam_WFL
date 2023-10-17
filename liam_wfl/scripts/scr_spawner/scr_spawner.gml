// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spawner(){

}

function generate_x(_offset) {
	return (irandom_range(_offset, room_width - _offset))
}

function generate_y(_offset) {
	return (0 - irandom_range(50, 500))
}