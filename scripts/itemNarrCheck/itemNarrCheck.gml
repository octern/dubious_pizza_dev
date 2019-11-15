var newitem = argument0;

if(global.silenceRoomNarrations) {exit;}

global.storyString = "";

if(newitem==itemType.bottleR) {
	global.storyString = "colors";
	textType = "dialog";
}

itemShown = arrayFind(newitem, global.itemIntrosShown) != -1;

if (global.storyString != "" && !itemShown) {
	append(global.roomIntrosShown, newitem);
	if(textType=="narration") {
		textArea = instance_create_depth(200,400,0,OTextAreaBG);
		spriteScale(textArea, (window_get_width()-500)/textArea.sprite_width);
		//	textBox = instance_create_depth(150,350,1,OTextMinor);
		//	spriteScale(textBox, (window_get_width()-450)/textArea.sprite_width);
		instance_create_depth(0,0,0,ONarrationTextController);
		append(global.itemIntrosShown, newitem);
	}
	if(textType=="dialog") {
		global.closeupRoom = room;
		append(global.itemIntrosShown, newitem);
		roomChangeFade(RDialog, room_speed*.5, room_speed/6, c_gray);
	}
}
