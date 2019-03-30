/// @description Insert description here
// You can write your code in this editor

// don't generate the item if it's already in inventory
itemCount = itemGetQuant(iItem);
if(itemCount != 0) {
	instance_destroy();
	exit;
}

// sprite_index=bottleSprite;
if(iScale) spriteScale(self, 4);
if(iRotation!=-1) image_angle=iRotation;
image_speed=0;
