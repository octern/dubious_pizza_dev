// fadeWhite(120,20000,make_color_rgb(255,255,220));
global.storyString = "friend_appears";
global.cinematic = true;
global.closeupRoom = room;
global.endIndex = 0;
poemEndings();
global.endingSequence = true;
roomChangeFade(REnding, 120, 10, make_color_rgb(255,255,220));
