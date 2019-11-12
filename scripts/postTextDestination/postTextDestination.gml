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
} else if(global.storyString == "friend_appears") {
	global.storyString = "denoument";
	nextRoom = RTalking;
} else if(global.storyString == "denoument") {
	nextRoom = RCredits;
} else if(global.storyString == "ending_cat") {
	global.storyString = "denoument";
	nextRoom = RTheEnd;
} else {
	nextRoom = global.closeupRoom;
}

return nextRoom;