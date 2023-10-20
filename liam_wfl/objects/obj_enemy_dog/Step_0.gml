/// Enemy dog movement code

if h_direction = "left" {
	x -= dog_speed
	if x <= min_x {
		h_direction = "right"	
	}
}
	
if h_direction = "right" {
	x += dog_speed
	if x >= max_x {
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
