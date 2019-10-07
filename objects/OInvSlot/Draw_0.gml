/// @description Insert description here
// You can write your code in this editor

if(!global.showInv) {exit;}

draw_self();

itemQuant = itemGetQuant(itemInSlot);

if(itemQuant > 0) {
	var itemSprite = global.itemDefinitions[itemInSlot, itemProperty.sprite];
	invItemDraw(itemInSlot, false, false);
}
