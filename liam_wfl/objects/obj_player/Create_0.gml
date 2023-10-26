/// Initializing the possible Player States

enum States {
	regular = 0,
	searching = 1,
}

enum moveStates {
	still = 0,
	moving = 1,
	jumping = 2
}

searches = 0

moveState = moveStates.still
stateSprites = [spr_player_still, spr_player_moving, spr_player_jumping]

state = States.regular


player_health = 6

searchTarget = noone