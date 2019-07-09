wiredir = argument0;
odir = argument1;
rel = argument2;
newind = argument3;
onewind = argument4;
if(broken == wiredir && obroken == odir && rel==global.wire1) {
	show_debug_message("wire 1 dir is " + string(odir));
	show_debug_message("wire 2 dir is " + string(wiredir));
	show_debug_message("wire 1 is " + string(rel) + "from wire 2");
	show_debug_message("sprites should change to " + string(newind) + "and " + string(onewind));
	wire_dir=newind;
	global.wire1.wire_dir = onewind;
	broken = -1;
	global.wire1.broken = -1;
	joined_to = global.wire1.id;
	global.wire1.joined_to = id;
	global.wire1 = 0;
	textRoomMinor("I spliced the wires together");
//	audio_play_sound(tapeOn, 1, false);
}
