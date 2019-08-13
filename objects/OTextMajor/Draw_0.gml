/// @description Insert description here
// You can write your code in this editor

// // if (live_call()) return live_result;

// this might happen if the user invokes a second text box before the first is done fading out.
if(fadeIn && fadeOut) {
	fadeIn=false;
}

if(fadeIn) {
	if(image_alpha<.8) {
		image_alpha += .02;
	} else {
		fadeIn=false;
	}
}
if(fadeOut) {
	if(image_alpha>0) {
		image_alpha -= .02;
	} else {
		fadeOut=false;
		instance_deactivate_object(OTextMajor);
	}
}
draw_self();