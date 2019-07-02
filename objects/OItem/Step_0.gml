/// @description Insert description here
// You can write your code in this editor

if(!initialized) {
// Check if the item should be here. 
	initialized = true;
	show_debug_message("about to check if item is supposed to be somewhere else")
	itemCount = itemGetQuant(iItem);
	itemLoc = itemGetLoc(iItem);
	//if(itemCount != 0) {
	//if(itemCount != itemCount) {
	if(itemLoc != "origin" && itemLoc != room && tableSlot==0) {  
		show_debug_message("this item shouldn't exist and is going away");
		instance_destroy();
		exit;
	}
}