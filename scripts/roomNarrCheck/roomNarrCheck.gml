var newroom = argument0;

global.storyString = "";

if(newroom==RTwo) {
	global.storyString = "RTwo";
}
if(newroom==RFour) {
	global.storyString = "RFour";
}

roomShown = arrayFind(newroom, global.roomIntrosShown) != -1;

if(!roomShown) {
	if (global.storyString != "") {
		overlaidNarrShow();
		append(global.roomIntrosShown, newroom);
	}
}