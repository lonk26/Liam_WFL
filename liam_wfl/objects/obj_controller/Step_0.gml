/// Check for reset

if !instance_exists(obj_player) {
	if keyboard_check_pressed(ord("R")) {
		game_restart()	
	}
}
