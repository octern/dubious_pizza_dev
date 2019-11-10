var newroom = argument0;

if(global.silenceRoomNarrations) {exit;}

global.storyString = "";
narrType = "overlay";

if(newroom==ROne && worldGet("toolbox")!="locked") {
	global.storyString = "gap_year";
	narrType = "flashback";	
}
if(newroom==RTwo) {
	global.storyString = "RTwo";
}
if(newroom==RFour) {
	global.storyString = "RFour";
}

roomShown = arrayFind(newroom, global.roomIntrosShown) != -1;

if(!roomShown) {
	if (global.storyString != "") {
		if(narrType == "overlay") {
			overlaidNarrShow();
			append(global.roomIntrosShown, newroom);
		}
		else {
			global.closeupRoom = room;
			append(global.roomIntrosShown, newroom);
			roomChangeFade(RDialog, 60, 10, c_gray);
		}
	}
}