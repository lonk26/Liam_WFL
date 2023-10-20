/// Initializes spawner timer

alarm[0] = game_get_speed(gamespeed_fps) * tmr_speed

// ------------------------- Rubble Spawning --------------------------------------

for (var i = 0; i < 3; i++) {
	instance_create_layer(generate_x(32), 1855, "Instances_mid", obj_rubble_pile)
}

