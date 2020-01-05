/// @description Insert description here
// You can write your code in this editor


if(click_timer>0) {click_timer--;}
if(fade_timer>0) {
	fade_timer--;
	if(fade_timer<=0) {
		if(tut_index < (num_frames - 1)) {
			tut_index++;
		} else {
			room_goto(ROne);
		}
	}
}

if(mouse_check_button_released(mb_left) && click_timer<=0) {
	fade_timer = fader_speed;
	fadeWhite(fader_speed, -1, c_gray);
	click_timer = click_delay;
}