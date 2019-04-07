// if (live_call(argument0, argument1, argument2)) return live_result;

var _item = argument0;
var _name = argument1;
var _num = argument2;

itemSprite = global.itemDefinitions[_item, itemProperty.sprite];
itemName = global.itemDefinitions[_item, itemProperty.name];
itemQuant = itemGetQuant(_item);

var num_offset_x = 30;
var num_offset_y = 20;
var text_offset_x = 0;
var text_offset_y = 30;
var text_border_offset_y = 40;

if(!_num) {
	var num_offset_x = 0;	
	var num_offset_y = 0;
}
if(!_name) {
	var text_offset_x = 0;
	var text_offset_y = 0;
	var text_border_offset_y = 0;
}

var _textX = x + sprite_width/2;
var _textY = y + sprite_height - text_offset_y - INV_BORDERWIDTH;
var _numX = x + sprite_width - num_offset_x;
var _numY = y + num_offset_y;


itemWidth=sprite_get_width(itemSprite);
itemHeight=sprite_get_height(itemSprite);

itemScale = 1;
if(itemWidth < 60 && itemHeight < 60) {
	itemScale = 2;
	itemWidth = itemWidth * 2;
	itemHeight = itemHeight * 2;
}
while(itemWidth > SLOT_PIXELS || itemHeight > SLOT_PIXELS) {
	itemScale = .8;
	itemWidth = itemWidth * .8;
	itemHeight = itemHeight * .8;
}
	

itemWidthOffset = max(0, (sprite_width - itemWidth))/2;
itemHeightOffset = max(0, ((sprite_height-text_border_offset_y) - itemHeight))/2;
draw_sprite_ext(itemSprite, 0, x+itemWidthOffset, y+itemHeightOffset+10,
	itemScale, itemScale, 0, c_white, 1);

if(_num) {
	draw_text(_numX, _numY, string(itemQuant));
}

if(_name) {
	var _bgX1 = x + INV_BORDERWIDTH;
	var _bgX2 = x + sprite_width - INV_BORDERWIDTH;
	var _bgY1 = y + sprite_height - text_border_offset_y;
	var _bgY2 = y + sprite_height - INV_BORDERWIDTH;
	draw_rectangle_color(_bgX1, _bgY1, _bgX2, _bgY2, c_dkgray, c_dkgray, c_silver, c_silver, false);

	draw_set_halign(fa_center);
	draw_text_color(_textX, _textY, itemName, c_black, c_black, c_black, c_black, 1);
}