
alarm[0] = game_get_speed(gamespeed_fps) * tmr_speed

var _rand = random_range(0,100)

var _enemy_dogs = instance_number(obj_enemy_dog)
var _enemy_crows = instance_number(obj_enemy_crow)

// ------------------------- Update Spawner --------------------------------------

if instance_exists(obj_player) {
	switch (obj_player.searches) {
		case (0):
			break;
		case (1):
			shell_spawn_chance = 0.75
			crow_spawn_chance = 0.25
			dog_spawn_chance = 0.5
			shell_number = 2
			break;
		case (2):
			shell_spawn_chance = 1.0
			crow_spawn_chance = 0.5
			dog_spawn_chance = 0.75
			shell_number = 3
			break;
		default:
	}
}

var _player_x = 0
if instance_exists(obj_player) {
	_player_x = obj_player.x
	
	if _enemy_crows == 0 and _rand < (100 * crow_spawn_chance) { 
		var _crow_x = 0
		if _player_x < 1000 {
			_crow_x = random_range(_player_x+1000, 3999)
		} else if _player_x > 2999 {
			_crow_x = random_range(0, _player_x-1000)	
		} else {
			if _rand < 0.5 {
				_crow_x = random_range(0, 1000)	
			} else {
				_crow_x = random_range(2999, 3999)	
			}
		}
	
		instance_create_layer(_crow_x, 2368, "Instances_collision", obj_enemy_crow)
	}

	var _dog_x = 0
	var _dog_y = 2816
	if _enemy_dogs <= 1 and _rand < (100 * dog_spawn_chance) {
		if _player_x < 1000 {
			_dog_x = random_range(_player_x+1000, 3850)
		} else if _player_x > 2999 {
			_dog_x = random_range(150, _player_x-1000)	
		} else {
			if _rand < 0.5 {
				_dog_x = random_range(150, 1000)	
			} else {
				_dog_x = random_range(2999, 3850)	
			}
		}
		while collision_rectangle(_dog_x-80, _dog_y-47, _dog_x+80, _dog_y+47, obj_block, false, true){
			if _player_x < 1000 {
				_dog_x = random_range(_player_x+1000, 3850)
			} else if _player_x > 2999 {
				_dog_x = random_range(150, _player_x-1000)	
			} else {
				if _rand < 0.5 {
					_dog_x = random_range(150, 1000)	
				} else {
					_dog_x = random_range(2999, 3850)	
				}
			}
	}
		instance_create_layer(_dog_x, _dog_y, "Instances_collision", obj_enemy_dog)
	}
			
}

// ------------------------- Shell Spawning --------------------------------------

for (var i=0; i <= shell_number; i++) {
	if _rand < (100 * shell_spawn_chance) {
		instance_create_layer(generate_x(32), generate_y(32), "Instances_mid", obj_shell)
	}
}
