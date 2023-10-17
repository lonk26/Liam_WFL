
alarm[0] = game_get_speed(gamespeed_fps) * tmr_speed

rand = random_range(0,100)

// ------------------------- Shell Spawning --------------------------------------

if rand < (100 * shell_spawn_chance) {
	instance_create_layer(generate_x(32), generate_y(32), "Instances_mid", obj_shell)
}
