if(!clickActive(mouse_x, mouse_y, true, OWireCoverCU, true)) {return false;}
	
if((instance_number(OBottleK) + instance_number(OPoemB)) > 0) {
	textRoomMinor(textGet("panelOccupied"));
	return false;
}

if(global.activeItem!=itemType.tape) {
	textRoomMinor(textGet("wiresNoTape"));	
	return false;
}

if(global.wire1 == 0) {
	global.wire1 = self;
} else if(global.wire1 == self) {
	global.wire1 = 0;
} else {
	up = collision_rectangle(x+4, y+4, x+8, y-4, OWire, false, true);
	dn = collision_rectangle(x+4, y+sprite_height-4, x+8, y+sprite_height+4, OWire, false, true);
	lf = collision_rectangle(x+4, y+4, x-4, y+8, OWire, false, true);
	rt = collision_rectangle(x+sprite_width-4, y+4, x+sprite_width+4, y+8, OWire, false, true);
	show_debug_message("wire 1 is " + string(global.wire1) + ". Wire 2 is " + string(id) + "Wire 2 is touching (UDLR): " + string(up) + "|"+string(dn)+"|"+string(lf)+"|"+string(rt));
	touching = 1;
	if(up==global.wire1) {show_debug_message("below");} else
	if(dn==global.wire1) {show_debug_message("above");} else 
	if(lf==global.wire1) {show_debug_message("right");} else
	if(rt==global.wire1) {show_debug_message("left");} else {
		show_debug_message("not touching");
		touching = 0;
	}
	obroken = global.wire1.broken;
	if(broken && global.wire1.broken && touching) {
		show_debug_message("these could be joined" + string(broken) + string(obroken));
// join a horizontal broken wire to a vertical wire above it
		wirefix(b.r, b.d, up, w.lu, w.ud);
		wirefix(b.d, b.r, dn, w.ud, w.lu);
		wirefix(b.r, b.u, dn, w.ld, w.ud);
		wirefix(b.u, b.r, up, w.ud, w.ld);
		wirefix(b.l, b.r, lf, w.lr, w.lr);
		wirefix(b.r, b.l, rt, w.lr, w.lr);
		wirefix(b.u, b.d, up, w.ud, w.ud);
		wirefix(b.d, b.u, dn, w.ud, w.ud);
//		if(broken == 2 && obroken == 1 && dn==global.wire1) {
//			image_index=3;
//			broken = 0;
//			global.wire1.image_index = 0;
//			global.wire1.broken = 0;
//		}
	global.wire1 = 0;
	}
}