/// @desc fade and change rooms
/// @param nextRoom 
/// @param fade_frames
/// @param pause_frames
/// @param color

nextRoom = argument[0];
fade1 = argument[1];
fade2 = argument[2];
fadeColor = argument[3];

roomFader = instance_create_depth(0,0,0,ORoomFader);
roomFader.nextRoom = nextRoom;
roomFader.roomChangeCountdown = fade1;

fadeOverlay = instance_create_depth(0,0,1,OFadeOverlay);
fadeOverlay.persistent = true;
fadeOverlay.fadeDuration = fade1;
fadeOverlay.fadePause = fade2;
fadeOverlay.fadeColor = fadeColor;

