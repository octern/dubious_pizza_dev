/// @description Insert description here
// You can write your code in this editor

// // if (live_call()) return live_result;

// this might happen if the user invokes a second text box before the first is done fading out.
if(fadeIn && fadeOut) {
	fadeOut=false;
}

if(fadeIn) {
	if(image_alpha<.8) {
		image_alpha += .1;
	} else {
		fadeIn=false;
	}
}
if(fadeOut) {
	if(image_alpha>0) {
		image_alpha -= .1;
	} else {
		fadeOut=false;
		instance_deactivate_object(OTextMinor);
	}
}
draw_self();