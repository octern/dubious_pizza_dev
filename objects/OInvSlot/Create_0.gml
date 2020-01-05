/// @description Insert description here
// You can write your code in this editor

// // if (live_call()) return live_result;

clickTime = current_time;
doubleClickSpeed = 750;
device_mouse_dbclick_enable(true);
itemInSlot = itemType.noItem;
image_speed = 60;

//var mag = instance_create_depth(x+5, y+sprite_height-36, depth-1, OInvMag);
//var mem = instance_create_depth(x+sprite_width-36, y+sprite_height-36, depth-1, OInvMemory);
mag = instance_create_depth(x+5, y+5, 0, OInvMag);
mem = instance_create_depth(x+sprite_width-20, y+5, depth-1, OInvMemory);
mag.image_xscale=.3;
mem.image_xscale=.3;
mag.image_yscale=.3;
mem.image_yscale=.3;
init = 0;
