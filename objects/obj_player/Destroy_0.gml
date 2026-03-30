audio_play_sound(snd_game_over, 100, false);
soundFrames =  60 * audio_sound_length(snd_game_over);
if(instance_exists(obj_game)){
	obj_game.alarm[ALARM_GAME_OVER] = soundFrames;	
}