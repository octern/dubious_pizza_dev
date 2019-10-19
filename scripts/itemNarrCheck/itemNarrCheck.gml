var newitem = argument0;

global.storyString = false;

if(newitem==itemType.bottleR) {
	global.storyString = "opening_narration";
}

if (global.storyString) {
	textArea = instance_create_depth(200,400,0,OTextAreaBG);
	spriteScale(textArea, (window_get_width()-500)/textArea.sprite_width);
	//	textBox = instance_create_depth(150,350,1,OTextMinor);
	//	spriteScale(textBox, (window_get_width()-450)/textArea.sprite_width);
	instance_create_depth(0,0,0,ONarrationTextController);
	append(global.itemIntrosShown, newitem);
}