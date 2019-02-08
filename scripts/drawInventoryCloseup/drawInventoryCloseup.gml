if (live_call()) return live_result;

_item = argument0;


draw_set_alpha(.7);
draw_rectangle_color(0,0,room_width, room_height,c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);

cuOverlay = instance_create_layer(room_width/2, room_height/2, "invCloseup", OInvCloseup);
cuOverlay.sprite_width = room_width * .8;
cuOverlay.sprite_height = room_height * .8;

_sprite = global.itemDefinitions[itemType._item, itemProperty.closeup];

oldx = sprite_get_xoffset(_sprite);
oldy = sprite_get_yoffset(_sprite);

sprite_set_offset(_sprite, sprite_width(_sprite)/2, sprite_height(_sprite)/2);

draw_sprite(_sprite, 0, room_width/2, room_height/2);
