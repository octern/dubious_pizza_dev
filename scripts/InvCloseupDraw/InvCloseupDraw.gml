// if (live_call(argument0)) return live_result;

_item = argument0;


cuOverlay = instance_create_layer(room_width/2, room_height/2, "invCloseup", OInvCloseup);
cuOverlayBG = instance_create_depth(room_width/2, room_height/2, cuOverlay.depth+1, OInvTextController);
cuOverlay.image_xscale = room_width * .8 / sprite_get_width(cuOverlay.sprite_index);
cuOverlay.image_yscale = room_height * .8 / sprite_get_height(cuOverlay.sprite_index);
cuOverlayBG.image_xscale = room_width * .98 / sprite_get_width(cuOverlayBG.sprite_index);
cuOverlayBG.image_yscale = room_height * .98 / sprite_get_height(cuOverlayBG.sprite_index);
//cuOverlayBG.sprite_width = room_width;
//cuOverlayBG.sprite_height = room_height;
cuOverlay.drawItem = _item;