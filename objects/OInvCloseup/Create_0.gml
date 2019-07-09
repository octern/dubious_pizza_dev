/// @description Insert description here
// You can write your code in this editor

// // if (live_call()) return live_result;

drawItem = global.closeupItem;

_sprite = global.itemDefinitions[drawItem, itemProperty.closeup];
_cuitem=instance_create_depth(x,y,depth-100,OInvCloseupItem);
_cuitem.sprite_index=_sprite;
_cuitem.image_speed=0;

debug_spr_width = sprite_get_width(_sprite);
debug_my_spr_width = sprite_width;

if(sprite_get_width(_sprite) < (sprite_width / 4) && 
	sprite_get_height(_sprite) < (sprite_height / 4)) {
	_newscale = min (
		sprite_width / _cuitem.sprite_width * .3, _cuitem.sprite_height * .3
//		_cuitem.image_xscale = sprite_width / _cuitem.sprite_width * .5
//		_cuitem.image_yscale = sprite_height / _cuitem.sprite_height * .5
	)
	_cuitem.image_xscale=_newscale;
	_cuitem.image_yscale=_newscale;
} else { show_debug_message("not rescaling");}

debug_image_xscale = _cuitem.image_xscale;

debug_spr_width_scaled = sprite_get_width(_sprite);
debug_my_spr_width = sprite_width;


oldx = sprite_get_xoffset(_sprite);
oldy = sprite_get_yoffset(_sprite);

//sprite_set_offset(_sprite, sprite_get_width(_sprite)/2, sprite_get_height(_sprite)/2);

_cuitem.x = x - _cuitem.sprite_width/2;
_cuitem.y = y - _cuitem.sprite_height/2;

//sprite_set_offset(_sprite, oldx, oldy);
