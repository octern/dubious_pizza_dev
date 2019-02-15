// @description Insert description here
// You can write your code in this editor

if(worldGet("toolbox")=="unlocked") {
	instance_destroy();
	exit;
}

solved=0;

image_speed=0;

image_xscale=4;
image_yscale=4;

dial1 = instance_create_depth(x+18, y+sprite_height/2-13, depth-1, ODial);
//dial5 = instance_create_layer(x-5, y-5, "Instances", ODial);
dial2 = instance_create_depth(x+sprite_width-32-14, y+sprite_height/2-13, depth-1, ODial);
dial3 = instance_create_depth(x+18, y+sprite_height-32-34, depth-1, ODial);
dial4 = instance_create_depth(x+sprite_width-32-14, y+sprite_height-32-34, depth-1, ODial);
//dial3 = instance_create_layer(x+5, y+sprite_height-21, "Instances", ODial);
//dial4 = instance_create_layer(x+sprite_width-21, y+sprite_height-21, "Instances", ODial);
//dial6 = instance_create_layer(x+sprite_width-21, y+sprite_height-21, "Instances", ODial);

dial1.image_xscale=2;
dial2.image_xscale=2;
dial1.image_yscale=2;
dial2.image_yscale=2;
dial3.image_xscale=2;
dial4.image_xscale=2;
dial3.image_yscale=2;
dial4.image_yscale=2;