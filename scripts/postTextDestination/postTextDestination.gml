if(1==0) {
	exit; //panic 
} else if(global.storyString == "opening_dialog") {
	global.storyString = "opening_narration";
	nextRoom = RNarration;
} else if(global.storyString == "opening_narration") {
	global.storyString = "invitation";
	nextRoom = RDialog;
} else if(global.storyString == "invitation") {
	global.storyString = "door_lock";
	nextRoom = RNarration;
}	
else {
	nextRoom = global.closeupRoom;
}

return nextRoom;