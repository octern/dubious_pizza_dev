/// @description Insert description here
// You can write your code in this editor

var itemQuant = global.itemDefinitions[itemInSlot, itemProperty.quant];
if(itemQuant > 0) {
	var itemSprite = global.itemDefinitions[itemInSlot, itemProperty.sprite];
	drawInvItem(itemInSlot);
}
draw_sprite(sprite_index, 0, x, y);