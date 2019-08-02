/// @description Insert description here
// You can write your code in this editor

//draw_rectangle_color(0,0,window_get_width(), window_get_height(), rgb, c_white, c_white, c_white, false);
if(fadingIn) {
	timer++;
	if(timer >= fadeDuration) {
		fadingIn=false;
		fadingPause=true;
	}
}
if(fadingPause) {
	pauseTimer++;
	if(pauseTimer >= fadePause) {
		fadingPause=false;
		fadingOut=true;
	}
}
if(fadingOut) {
	timer--;
	if(timer <=0) {
		instance_destroy();
	}
}
alpha = timer/fadeDuration * 255;
draw_sprite_ext(SFadeOverlayW, 0, 0, 0, window_get_width(), window_get_height(), 0, c_white, alpha);
