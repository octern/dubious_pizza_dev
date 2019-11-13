_room = room;
test1 = (room == RInvCloseup);
test2 = (global.endingSequence);
testtest = test1 & test2;

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
	global.storyString = "none";
} else if(global.storyString == "ending_cat") {
	global.storyString = "none";
	nextRoom = RTheEnd;
} else if(room == RInvCloseup && global.endingSequence) {
	global.endIndex++;
	if(global.endIndex < array_length_1d(global.poemEndSequence)) {
		global.closeupItem = global.poemEndSequence[global.endIndex];
		nextRoom = room;
	} else {
		global.storyString = "ending_cat";
		nextRoom = RDialog;
	}	
} else {
	nextRoom = global.closeupRoom;
}

return nextRoom;