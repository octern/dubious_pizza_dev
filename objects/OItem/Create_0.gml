/// @description Insert description here
// You can write your code in this editor

// objects placed via room editor are always created
// if it's supposed to be in inventory or in another room, it will be destroyed in the step event

initialized = false;

// sprite_index=bottleSprite;
if(iScale) spriteScale(self, 4);
if(iRotation!=-1) image_angle=iRotation;
image_speed=0;
