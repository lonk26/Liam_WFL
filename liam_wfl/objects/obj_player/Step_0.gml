while place_meeting(x, y, obj_block) {
	y -= 0.1	
}

searchTarget = noone
with obj_rubble_pile {
	
	var distance = point_distance(x,y,other.x,other.y)
	
	if distance < 80 {
		other.searchTarget = id
	}
} 

if (keyboard_check(vk_left) and !instance_place(x-move_speed, y - 4, obj_block)) {
	x += -move_speed
	image_xscale = -1
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed, y - 4, obj_block)) {
	x += move_speed
	image_xscale = 1
}

if (keyboard_check(vk_space)) {
	if (instance_place(x, y+1, obj_block)) {
		vspeed = jump_height	
	}
}

if (instance_place(x, y+1, obj_block)) {
	gravity = 0	
} else {
	gravity = 0.25	
}

if vspeed > 12 {
	vspeed = 12
}
