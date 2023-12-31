/// Code if a shell hits a player
//Play dogHurt sound
audio_sound_pitch(snd_dogHurt, random_range(0.8, 1.2));
audio_play_sound(snd_dogHurt,1,false)

/// Destroy the shell
instance_destroy()

/// Find the nearest shell shadow object (shadow associated with this shell)
var prev_distance = 99999
var destroyID = noone

with obj_shell_shadow {
	var distance = point_distance(x,y,other.x,other.y)
	if distance < prev_distance {
		prev_distance = distance	
		destroyID = id
	}
}

/// Destroy associated shell shadow and remove 1 from player health
instance_destroy(destroyID)
if other.dmg_cooldown == false and other.cht_invulnerable == false {
	other.player_health -= 1
	other.dmg_cooldown = true
	other.alarm[1] = 30
}

/// If player health is 0, destroy the player object
if other.player_health <= 0 {
	instance_destroy(other)	
}

instance_create_layer(x,y,"instances_mid", obj_explosion)
