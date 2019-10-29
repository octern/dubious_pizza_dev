/// @description Insert description here
// You can write your code in this editor

// testingLiveInit();

initInit();
debug_timer = 0;
debug_timer_setting = room_speed * 2;

audio_loaded_sfx = false;
audio_loaded_bgm = false;
audio_group_load(audio_bgm);
audio_group_load(audio_sfx);
