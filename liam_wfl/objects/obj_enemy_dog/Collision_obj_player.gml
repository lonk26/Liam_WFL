/// Interaction with player code

if other.attacking == true {
	instance_destroy()
}

else if other.dmg_cooldown == false and other.cht_invulnerable == false {
	//Play dogHurt sound
	audio_sound_pitch(snd_dogHurt, random_range(0.8, 1.2));
	audio_play_sound(snd_dogHurt,1,false)
	
	other.player_health -= 1
	other.dmg_cooldown = true
	other.alarm[1] = 30
}

if other.player_health <= 0 {
	//Play dogHurt sound
	audio_sound_pitch(snd_dogHurt, random_range(0.8, 1.2));
	audio_play_sound(snd_dogHurt,1,false)
	
	instance_destroy(other)	
}
