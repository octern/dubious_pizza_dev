/// @description Insert description here
// You can write your code in this editor

//draw_rectangle_color(0,0,window_get_width(), window_get_height(), rgb, c_white, c_white, c_white, false);

if(fadeDuration <= 0) exit; 

if(fadingIn) {
	timer++;
	colr=c_white;
	if(timer >= fadeDuration) {
		fadingIn=false;
		fadingPause=true;
	}
}
if(fadingPause) {
	pauseTimer++;
	colr=c_white;
	if(pauseTimer >= fadePause) {
		fadingPause=false;
		fadingOut=true;
	}
}
if(fadingOut) {
	timer--;
	colr=c_white;
	if(timer <=0) {
		instance_destroy();
	}
}
alpha = timer/fadeDuration;
draw_sprite_ext(SFadeOverlayW, 0, 0, 0, window_get_width(), window_get_height(), 0, colr, alpha);
