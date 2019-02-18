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
		for(i=0; i<instance_number(OPips); i++) {
			_pip = instance_find(OPips, i);
			_pip.x-=_pip.nudgex;
			_pip.y-=_pip.nudgey;
		}
	}
}