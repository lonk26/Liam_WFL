/// Initializes spawner timer

alarm[0] = game_get_speed(gamespeed_fps) * tmr_speed

randomize()
// ------------------------- Rubble Spawning --------------------------------------

for (var i = 0; i < 3; i++) {
	var _rub_x = random_range((1333 * i) + 300, (1333 * (i+1)) - 300)
	while collision_rectangle(_rub_x - 125, room_height-180, _rub_x + 125, room_height-200, obj_block, false, true) {
		_rub_x = random_range((1333 * i) + 300, (1333 * (i+1)) - 300)
	}
	instance_create_layer(_rub_x, room_height - 160, "Instances_mid", obj_rubble_pile)
}

