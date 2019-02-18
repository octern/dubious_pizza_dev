/// @description Insert description here
// You can write your code in this editor

if(worldGet("elecPanel")=="open") {
	sprite_index=SWireFrame;
	exit;
}

screw1=instance_create_depth(x+sprite_width/10, y+sprite_height/10*2, depth-1, OScrew);
screw2=instance_create_depth(x+sprite_width/10*9, y+sprite_height/10*2, depth-1, OScrew);
screw3=instance_create_depth(x+sprite_width/10, y+sprite_height/10*8, depth-1, OScrew);
screw4=instance_create_depth(x+sprite_width/10*9, y+sprite_height/10*8, depth-1, OScrew);

spriteScale(screw1, .5);
spriteScale(screw2, .5);
spriteScale(screw3, .5);
spriteScale(screw4, .5);

