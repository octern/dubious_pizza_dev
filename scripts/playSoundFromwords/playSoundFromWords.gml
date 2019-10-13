/// @desc Play the sound attached to a string and return the start string
startStr = argument0;

show_debug_message("playSoundFromWord string is "+startStr);
if(string_pos("%%",startStr) == 0) {
	show_debug_message("no sound, string is: "+startStr)
    words = startStr;
} else {
	show_debug_message("sound found at position " + string(string_pos("%%",remainingStr)));
    sound = string_copy(startStr, 1, string_pos("%%",startStr)-1);
 //   trace(segment);
    words = string_copy(startStr, string_pos("%%",startStr)+2, string_length(startStr));
	audio_play_sound(asset_get_index(sound),0,false);
}
return(words);

