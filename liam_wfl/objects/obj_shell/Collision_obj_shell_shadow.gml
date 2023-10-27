/// Code if a shell directly hits its own shadow (did not hit player)

instance_destroy(other)
instance_destroy()
instance_create_layer(x,y,"instances_mid", obj_explosion)

//Play Sound
audio_sound_pitch(snd_bombHit, random_range(0.8, 1.2));
audio_play_sound(snd_bombHit, 1, false);