/// @description Insert description here
// You can write your code in this editor

image_speed=0;
itemSpotlight(self);
nudged=0;
corners = ds_queue_create();
solution = worldGet("picture1Solution");
corners_s = ds_queue_write(corners);
solution_s = ds_queue_write(solution);
