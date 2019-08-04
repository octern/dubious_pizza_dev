/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
if(worldGet("toolbox")=="open" || worldGet("toolbox") == "unlocked") {
	image_index=3;
} else { // if toolbox isn't open yet, hide the items that are supposed to be inside
	instance_deactivate_object(instance_find(OTape, 0));
	instance_deactivate_object(instance_find(OScrewdriver, 0));
}
