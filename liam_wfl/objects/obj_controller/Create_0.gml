/// Initializes spawner timer

alarm[0] = game_get_speed(gamespeed_fps) * tmr_speed

// ------------------------- Rubble Spawning --------------------------------------

for (var i = 0; i < 3; i++) {
	randomize()
	rub_x = random_range((1333 * i) + 500, (1333 * (i+1)) - 500)
	instance_create_layer(rub_x, room_height - 190, "Instances_mid", obj_rubble_pile)
}

