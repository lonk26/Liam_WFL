/// @ Player Movement Code

if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_collision_block)) {
	x += -move_speed
	image_xscale = -1
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_collision_block)) {
	x += move_speed
	image_xscale = 1
}

if (instance_place(x, y+1, obj_collision_floor)) {
	gravity = 0	
} else {
	gravity = 0.25	
}

if vspeed > 12 {
	vspeed = 12
}

if (keyboard_check(vk_space)) {
	if (instance_place(x, y+1, obj_collision_floor)) {
		vspeed = jump_height	
	}
}