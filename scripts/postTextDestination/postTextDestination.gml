if(1==0) {
	exit; //panic the world's gone mad
} else if(global.storyString == "opening_dialog") {
	global.storyString = "opening_narration";
	nextRoom = RNarration;
} else if(global.storyString == "opening_narration") {
	global.storyString = "invitation";
	nextRoom = RDialog;
}	
else {
	nextRoom = global.closeupRoom;
}

return nextRoom;