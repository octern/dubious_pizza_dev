/// @description Insert description here

// only use these if the debug flag is on
if(!global.lightButtons) {
	instance_destroy();
	exit;
}

image_speed = 0;
press_scale = .95;
orig_xscale = image_xscale;
orig_yscale = image_yscale;
lightState = worldGet(light_color);
if(lightState) {
	image_index=1;
} else {
	image_index=0;
}
