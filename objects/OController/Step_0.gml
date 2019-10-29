/// @description Insert description here
// You can write your code in this editor

keyboardCmdChk();

//show_debug_message(string(audio_loaded_bgm));
if(audio_group_is_loaded(audio_bgm) && !audio_loaded_bgm) {
	audio_loaded_bgm = true;
	show_debug_message("start_playing_music");
	global.bgm = audio_play_sound(ABGRoulette, 0, true);
	audio_group_set_gain(audio_bgm, 1, 250);
}
