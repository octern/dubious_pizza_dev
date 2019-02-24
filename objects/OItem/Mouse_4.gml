/// @description Insert description here
// You can write your code in this editor

if(clickActive(mouse_x, mouse_y, true, OWireCoverCU, true)) {
	itemSetQuant(iItem, itemGetQuant(iItem)+1);
	instance_destroy();
}