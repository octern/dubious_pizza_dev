/// @description Insert description here
// You can write your code in this editor

// I don't get why I need to do this; it shouldn't be running outside the wire room.
if(instance_number(OWire) == 0) {return false;}

_r="na";
_g="na";
_b="na";


for(var i=0; i < instance_number(OWire); i++) {
	thewire=instance_find(OWire, i);
	if(thewire.r) {
		if(_r=="na") {_r = (thewire.r==thewire.wire_dir);}
		_r = _r && (thewire.broken==-1) && (thewire.r==thewire.wire_dir);
	}
	if(thewire.g) {
		if(_g=="na") {_g = (thewire.g==thewire.wire_dir);}
		_g = _g && (thewire.broken==-1) && (thewire.g==thewire.wire_dir);
	}
	if(thewire.b) {
		if(_b=="na") {_b = (thewire.b==thewire.wire_dir);}
		_b = _b && (thewire.broken==-1) && (thewire.b==thewire.wire_dir);
	}
}
if(_r=="na") _r=false;
if(_g=="na") _g=false;
if(_b=="na") _b=false;

worldSet("wireR", _r);
worldSet("wireB", _b);
worldSet("wireG", _g);
