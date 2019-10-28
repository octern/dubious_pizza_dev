global.roomType = "start";
global.bgm = audio_play_sound(ABGRoulette, 0, true);
audio_group_set_gain(audio_bgm, 1, 250);
audio_sound_gain(global.bgm, 1, 250);