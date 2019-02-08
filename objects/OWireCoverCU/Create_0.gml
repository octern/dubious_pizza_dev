/// @description Insert description here
// You can write your code in this editor

if(worldGet("elecPanel") == "open") {
	instance_destroy();
	exit;
}

screw1=instance_create_depth(x+sprite_width/10, y+sprite_height/10*2, depth-1, OScrew);
screw2=instance_create_depth(x+sprite_width/10*9, y+sprite_height/10*2, depth-1, OScrew);
screw3=instance_create_depth(x+sprite_width/10, y+sprite_height/10*8, depth-1, OScrew);
screw4=instance_create_depth(x+sprite_width/10*9, y+sprite_height/10*8, depth-1, OScrew);

// These angles define the solution to the padlock puzzle
screw1.image_angle=360-worldGet("screw1")*30;
screw2.image_angle=360-worldGet("screw2")*30;
screw3.image_angle=360-worldGet("screw3")*30;
screw4.image_angle=360-worldGet("screw4")*30;
