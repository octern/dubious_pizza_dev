/// @description Insert description here
// You can write your code in this editor

for(i=0; i<instance_number(ONav); i++) {
	_nav = instance_find(ONav, i);
	if(_nav.dest==RPostit) {
		endNav = _nav;
		instance_deactivate_object(endNav);
	}
}
		
image_speed=0;
if(worldGet("scarydoor")=="unlocked") {
	image_index=1;
} else if(worldGet("scarydoor")=="open") {
	image_index=2;
	instance_activate_object(endNav);
}
