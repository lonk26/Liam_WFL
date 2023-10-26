/// Collision redundancy

if y < other.y {
	if moveState == moveStates.jumping {
		moveState = moveStates.still
		sprite_index = stateSprites[moveState]
	}
	vspeed = 0
} else {
	if moveState == moveStates.jumping {
		moveState = moveStates.still
		sprite_index = stateSprites[moveState]
	}
	vspeed = 0
	vspeed += 2
}