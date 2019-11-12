// fadeWhite(120,20000,make_color_rgb(255,255,220));
global.storyString = "friend_appears";
global.cinematic = true;
global.closeupRoom = room;
global.endIndex = 0;
poemEndings();
global.endingSequence = true;
endFadeSeconds = global.silenceRoomNarrations ? 0.2 : 2;
roomChangeFade(REnding, endFadeSeconds * room_speed, 10, make_color_rgb(255,255,220));
