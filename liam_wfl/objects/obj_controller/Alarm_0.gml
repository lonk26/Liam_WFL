
alarm[0] = game_get_speed(gamespeed_fps) * tmr_speed

rand = random_range(0,100)


// ------------------------- Update Spawner --------------------------------------

if instance_exists(obj_player) {
	switch (obj_player.searches) {
		case (0):
			shell_spawn_chance = 0.5
			break;
		case (1):
			shell_spawn_chance = 0.75
			shell_number = 2
			break;
		case (2):
			shell_spawn_chance = 1.0
			shell_number = 3
			break;
		default:
	}
}

// ------------------------- Shell Spawning --------------------------------------

for (var i=0; i <= shell_number; i++) {
	if rand < (100 * shell_spawn_chance) {
		instance_create_layer(generate_x(32), generate_y(32), "Instances_mid", obj_shell)
	}
}
