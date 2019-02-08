/// @description Insert description here
// You can write your code in this editor
if (live_call()) return live_result;
if(global.activeItem)==itemType.screwdriver {
	worldSet("elecPanel", "open");
	instance_destroy();
	instance_destroy(screw1);
	instance_destroy(screw2);
	instance_destroy(screw3);
	instance_destroy(screw4);	
}