/// @description Insert description here
// You can write your code in this editor
// // if (live_call()) return live_result;

if(worldGet("elecPanel") == "open") {
//	if(clickActive(mouse_x, mouse_y, false)) {
		instance_destroy();
		for(var i=0; i<ds_list_size(screws); i++) {
			instance_destroy(screws[| i]);
//		}
//		if(instance_number(OWirePanel)==0){
//			_field=instance_create_layer(x,y,layer,OWirePanel);
//		}
		instance_activate_object(OBottleK);
		instance_activate_object(OPoemB);	
		global.panelJustRemoved = true;
//		if(instance_number(OBottleK)==0 and itemGetQuant(itemType.bottleK)==0) {
//			_bottle = instance_create_depth(_field.x,y,depth-2,OBottleK);
//			spriteScale(_bottle, 8);
//			_bottle.y = _field.y + _field.sprite_height - _bottle.sprite_height;
//		}
	}
} else {
	if(global.activeItem)==itemType.screwdriver {
		worldSet("elecPanel", "open");
		for(var i=0; i<ds_list_size(screws); i++) {
			screws[| i].image_index=1;
		}
		textRoomMinor(textGet("panelUnscrew"));
	} else {
		if(clickActive(mouse_x, mouse_y, false)) textRoomMinor(textGet("panelClosed"));
	}
}

