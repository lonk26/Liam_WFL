if instance_place(x,y-1, obj_block) != noone {
	y -= 1
}

/// Enemy dog movement code

if h_direction = "left" {
	if !((x - sprite_xoffset - dog_speed) <= min_x) and !(instance_place(x-dog_speed, y-4, obj_block)) {	
		x -= dog_speed	
	} else {
		h_direction = "right"	
	}
}
	
if h_direction = "right" {
	if !((x + sprite_xoffset + dog_speed) >= max_x) and !(instance_place(x+dog_speed, y-4, obj_block)) {
		x += dog_speed	
	} else {
		h_direction = "left"	
	}
}
	
/// Adjusting Sprite Facing
if xprev < x {
	image_xscale = 1
	xprev = x
} else {
	image_xscale = -1
	xprev = x
}


/// Gravity - (TEST)

if (instance_place(x, y+2, obj_block)) {
	gravity = 0	
} else {
	gravity = 0.25	
}