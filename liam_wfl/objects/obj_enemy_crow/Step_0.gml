/// Crow movement code

/// If crow's state is in regular, check if the player is within diving range

if state == crow_States.regular {
	
	if !diving_cooldown {
		if instance_exists(obj_player) {
			with obj_player {
			var distance = point_distance(x,y,other.x,other.y) 
				if distance < 600 {
					other.alarm[0] = 270
					other.alarm[1] = 60
					other.state = crow_States.diving
					other.diving_cooldown = true
				}
			}	
		}
	}
	
	/// Return to fly height after a dive and move in specified direction
	if h_direction = "left" {
		direction = point_direction(x,y, min_x, fly_height)
		speed = fly_speed
		if x <= min_x {
			h_direction = "right"	
		}
	}
	
	if h_direction = "right" {
		direction = point_direction(x,y,max_x, fly_height)	
		speed = fly_speed
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
	
} else {
	if instance_exists(obj_player) {
		direction = point_direction(x, y, obj_player.x, obj_player.y)
		speed = dive_speed
	}
	
	/// Adjusting Sprite Facing
	if xprev < x {
		image_xscale = 1
		xprev = x
	} else {
		image_xscale = -1
		xprev = x
	}
} 


