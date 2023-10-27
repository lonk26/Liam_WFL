/// Create a shell shadow under where the shell is falling

instance_create_layer(x, room_height - 110, "Instances_mid", obj_shell_shadow)

//play fall
audio_sound_pitch(snd_bombFall, random_range(0.8, 1.2));
audio_play_sound(snd_bombFall, 1, false)