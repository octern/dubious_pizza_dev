/// @description Insert description here
// You can write your code in this editor

lightState = worldGet(light_color);
if(lightState) {
	image_index=0;
	worldSet(light_color, 0);
} else {
	image_index=1;
	worldSet(light_color, 1);
}

image_xscale = orig_xscale;
image_yscale = orig_xscale;
