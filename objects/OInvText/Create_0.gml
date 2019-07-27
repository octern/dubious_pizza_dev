/// @description Insert description here
// You can write your code in this editor
item_string = global.itemDefinitions[global.closeupItem, itemProperty.description];
text_x = x/2;
text_y = y/2+50;
text_scale = 1.75;
text_y_start = text_y;
text_increment = string_height("A");
text_height = string_height(item_string);
scroll_timer = 10;
// I have no idea why this is needed, but the text won't scroll far enough without it
text_scroll_extra = 200 * text_scale;

text_max_scroll = y - (text_height * text_scale) - text_scroll_extra + (text_increment * text_scale * 4);

dn_timer = 0;
up_timer = 0;