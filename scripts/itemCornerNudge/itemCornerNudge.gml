mousex = mouse_x;
mousey = mouse_y;

tlx1 = x;
tlx2 = x+.1*sprite_width;
tly1 = y;
tly2 = y+.1*sprite_height;

trx1 = x+.9*sprite_width;
trx2 = x+sprite_width;
try1 = y;
try2 = y+.1*sprite_height;

brx1 = x+.9*sprite_width;
brx2 = x+sprite_width;
bry1 = y+.9*sprite_height;
bry2 = y+sprite_height;

blx1 = x;
blx2 = x+.1*sprite_width;
bly1 = y+.9*sprite_height;
bly2 = y+sprite_height;

if point_in_rectangle(mousex, mousey, tlx1, tly1, tlx2, tly2) return("tl");
if point_in_rectangle(mousex, mousey, trx1, try1, trx2, try2) return("tr");
if point_in_rectangle(mousex, mousey, blx1, bly1, blx2, bly2) return("bl");
if point_in_rectangle(mousex, mousey, brx1, bry1, brx2, bry2) return("br");
return(0);
