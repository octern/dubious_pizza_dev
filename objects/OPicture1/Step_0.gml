/// @description Insert description here
// You can write your code in this editor
_r=worldGet("wireR");
_b=worldGet("wireB");
_g=worldGet("wireG");

if( _r ||  _b ||  _g) image_index=0;
if( _r &&  _b &&  _g) image_index=2;
if(!_r && !_b && !_g) image_index=1;

if(nudged>0) {
	nudged -= 1;
	if(nudged <= 0) {
		image_angle=0;
	}
}