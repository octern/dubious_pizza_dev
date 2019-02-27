// if (live_call()) return live_result;

mousex = mouse_x;
mousey = mouse_y;
tol = .2;
ntol = 1-tol;


//var _x = sprite_get_bbox_left(sprite_index);
//var _y = sprite_get_bbox_top(sprite_index);
var _x = x;
var _y = y;


tlx1 = _x;
tlx2 = _x+tol*sprite_width;
tly1 = _y;
tly2 = _y+tol*sprite_height;

trx1 = _x+ntol*sprite_width;
trx2 = _x+sprite_width;
try1 = _y;
try2 = _y+tol*sprite_height;

brx1 = _x+ntol*sprite_width;
brx2 = _x+sprite_width;
bry1 = _y+ntol*sprite_height;
bry2 = _y+sprite_height;

blx1 = _x;
blx2 = _x+tol*sprite_width;
bly1 = _y+ntol*sprite_height;
bly2 = _y+sprite_height;

if point_in_rectangle(mousex, mousey, tlx1, tly1, tlx2, tly2) return("tl");
if point_in_rectangle(mousex, mousey, trx1, try1, trx2, try2) return("tr");
if point_in_rectangle(mousex, mousey, blx1, bly1, blx2, bly2) return("bl");
if point_in_rectangle(mousex, mousey, brx1, bry1, brx2, bry2) return("br");
return(0);
