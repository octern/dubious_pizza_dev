roomAdd=argument0;
currentRoom = room;

roomSequence = [ROne, RTwo, RFour, RThree];

if(roomAdd==1 || roomAdd==-1) {
	roomLen=array_length_1d(roomSequence);
	roomIndex=arrayFind(currentRoom, roomSequence);
	if(roomIndex==-1) show_error("room " + currentRoom + " not in sequence, can't move!", true)
	newIndex = roomIndex + roomAdd;
	if(newIndex<0) newIndex = roomLen-1;
	if(newIndex >= roomLen) newIndex = 0;
	var newRoom = roomSequence[newIndex];
} else if(roomAdd=="dn") {
	var newRoom = global.roomParents[currentRoom];
}

room_goto(newRoom);

view_wview[0] = window_get_width()
view_hview[0] = window_get_height()
view_wport[0] = view_wview[0]
view_hport[0] = view_hview[0]
view_hborder[0] = view_wview[0] / 2;
view_vborder[0] = view_hview[0] / 2;
