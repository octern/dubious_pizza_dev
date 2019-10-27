/// @description Insert description here
// You can write your code in this editor

image_speed=0;
itemSpotlight(self);
nudged=0;
corners = ds_list_create();
solution = worldGet("picture1Solution");
solvedTargetY = -1;

picturePipsInit();

// hide the items that are behind the painting
if(worldGet("painting") == "open") {
	paintingSolved("already");
} else {
	instance_deactivate_object(instance_find(OPoemC, 0));
	instance_deactivate_object(instance_find(OBottleR, 0));
}
initialClunk = false;
initialClunkPause = 1;
initialClunkMsg = false;
