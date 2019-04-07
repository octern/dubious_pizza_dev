/// @description Insert description here
// You can write your code in this editor


// Check if the item should be here. 
show_debug_message("about to check if item is in inventory")
itemCount = itemGetQuant(iItem);
itemLoc = itemGetLoc(iItem);
//if(itemCount != 0) {
//if(itemCount != itemCount) {
if(itemLoc != "origin" && itemLoc != room) {  
	show_debug_message("this item shouldn't exist and is going away");
	instance_destroy();
	exit;
}

// sprite_index=bottleSprite;
if(iScale) spriteScale(self, 4);
if(iRotation!=-1) image_angle=iRotation;
image_speed=0;
