/// @description Insert description here
// You can write your code in this editor
// // if (live_call()) return live_result;

instance_activate_object(OInvSlot);
instance_activate_object(OInvMag);
instance_activate_object(OInvMemory);
instance_activate_object(OMenuButton);
nextRoom = postTextDestination();

if(global.endingSequence) {
	roomChangeFade(nextRoom, room_speed*.5, 1, c_black);
} else {
	room_goto(nextRoom);
}
