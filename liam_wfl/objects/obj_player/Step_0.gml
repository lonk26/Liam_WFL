/// I don't know why I have to do it like this, but player will get stuck in collision
/// objects after jumping. 

if instance_place(x,y-1, obj_block) != noone {
	y -= 1
}

/// Prevent player movement if they are searching the rubble
if state == States.searching exit 

/// ----------------------- Searching Code --------------------------------------

/// Look for the nearest rubble pile to search / check if one is within range of the player
searchTarget = noone
with obj_rubble_pile {
	
	var distance = point_distance(x,y,other.x,other.y)
	
	if distance < 80 {
		other.searchTarget = id
	}
} 

/// If there is an existing search target, and the player pressed "E", begin searching the rubble pile
if keyboard_check_pressed(ord("E")) and !(searchTarget == noone) {
	state = States.searching
	alarm[0] = 150
}


/// ------------------------ Movement code ---------------------------------------
if (keyboard_check(vk_left) and !instance_place(x-move_speed, y - 4, obj_block)) {
	x += -move_speed
	image_xscale = -1
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed, y - 4, obj_block)) {
	x += move_speed
	image_xscale = 1
}

if (keyboard_check_pressed(vk_space)) {
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

/// -------------------------- Cheat Codes ----------------------------------------

if keyboard_check_pressed(vk_delete) {
	player_health += 1	
}

if keyboard_check_pressed(vk_insert) {
	if cht_invulnerable == false {
		cht_invulnerable = true
	} else {
		cht_invulnerable = false	
	}
}

if keyboard_check(vk_end) {
	room_goto_next()	
}
