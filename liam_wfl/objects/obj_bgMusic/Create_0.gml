audio_stop_sound(snd_cutscene_music)
audio_play_sound(snd_background_music,1,true)
if(game_restart){
	audio_stop_sound(snd_background_music)
	audio_play_sound(snd_background_music,1,true)
}