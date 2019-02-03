var _item = argument0;
itemSprite = global.itemDefinitions[_item, itemProperty.sprite];
itemName = global.itemDefinitions[_item, itemProperty.name];
itemQuant = itemGetQuant(_item);

var _textX = x + sprite_width/2;
var _textY = y + sprite_height - 30 - INV_BORDERWIDTH;
var _numX = x + sprite_width - 30;
var _numY = y + 20

draw_sprite(itemSprite, 0, x, y-10);

draw_text(_numX, _numY, string(itemQuant));

var _bgX1 = x + INV_BORDERWIDTH;
var _bgX2 = x + sprite_width - INV_BORDERWIDTH;
var _bgY1 = y + sprite_height - 40;
var _bgY2 = y + sprite_height - INV_BORDERWIDTH;
draw_rectangle_color(_bgX1, _bgY1, _bgX2, _bgY2, c_dkgray, c_dkgray, c_silver, c_silver, false);

draw_set_halign(fa_center);
draw_text_color(_textX, _textY, itemName, c_black, c_black, c_black, c_black, 1);
