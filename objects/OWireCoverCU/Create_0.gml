/// @description Insert description here
// You can write your code in this editor

if(worldGet("elecPanel") == "open") {
	instance_destroy();
	exit;
}

image_index=0;
image_speed=0;

screw1=instance_create_depth(x+sprite_width/20, y+sprite_height/15, depth-1, OScrew);
screw2=instance_create_depth(x+sprite_width/20*19, y+sprite_height/15, depth-1, OScrew);
screw3=instance_create_depth(x+sprite_width/20, y+sprite_height/15*14, depth-1, OScrew);
screw4=instance_create_depth(x+sprite_width/20*19, y+sprite_height/15*14, depth-1, OScrew);

// These angles define the solution to the padlock puzzle
screw1.image_angle=360-worldGet("screw1")*30;
screw2.image_angle=360-worldGet("screw2")*30;
screw3.image_angle=360-worldGet("screw3")*30;
screw4.image_angle=360-worldGet("screw4")*30;

// for debugging
if(global.easyScrews) {
	screw1.image_angle=360-worldGet("screw1_easy")*30;
	screw2.image_angle=360-worldGet("screw2_easy")*30;
	screw3.image_angle=360-worldGet("screw3_easy")*30;
	screw4.image_angle=360-worldGet("screw4_easy")*30;
}

spriteScale(screw1, 1.5);
spriteScale(screw2, 1.5);
spriteScale(screw3, 1.5);
spriteScale(screw4, 1.5);

screws = ds_list_create();
ds_list_add(screws, screw1, screw2, screw3, screw4);
instance_deactivate_object(OBottleK);
instance_deactivate_object(OPoemB);
