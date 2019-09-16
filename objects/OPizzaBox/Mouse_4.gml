/// @description Insert description here
// You can write your code in this editor

if(!open) {
	open = true;
	instance_activate_object(OPoemR);
	image_index=1;
	return true;
}

if(instance_number(OPoemR) > 0) {
	show_debug_message("taking robot poem instead of box") 
} else {
	if(variable_instance_exists(id, "poemGone")) {itemPickup(id);}
	poemGone = 1;
}