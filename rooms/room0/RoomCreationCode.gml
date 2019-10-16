
if(!instance_exists(OController)) {
	instance_create_layer(0, 0, "Instances", OController);
}
controllerInst = instance_find(OController, 0);

if(room==room0) {
	global.closeupRoom = ROne;
	room_goto(RStart);
	exit;
}

if(room==RTwo) {
	global.storyString = "opening_narration";
	textArea = instance_create_depth(200,400,0,OTextAreaBG);
	spriteScale(textArea, (window_get_width()-500)/textArea.sprite_width);
//	textBox = instance_create_depth(150,350,1,OTextMinor);
//	spriteScale(textBox, (window_get_width()-450)/textArea.sprite_width);
	instance_create_depth(0,0,0,ONarrationTextController);
}

roomSetup();

global.showInv = true;
global.roomType = "room";
//clearInventoryUI(false);

/*
var _randItems = irandom_range(2,8);

for(i=0;i<_randItems;i++) {
	createRandomItem();
}