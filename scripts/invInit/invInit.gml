// // if (live_call()) return live_result;

#macro MAX_INV_ITEMS 12
#macro SLOT_PIXELS 100
#macro INV_BORDERWIDTH 4

var inv_cols=2;
var inv_rows=ceil(MAX_INV_ITEMS/inv_cols);
global.inv_edge = room_width - inv_cols*SLOT_PIXELS;

inventory[MAX_INV_ITEMS] = itemType.noItem;

var slotNum = 0;
for(i=0; i<inv_rows; i++) {
	for(j=0; j<inv_cols; j++) {
		var slotX = room_width-((j+1)*SLOT_PIXELS) + (j * INV_BORDERWIDTH);
		var slotY = i*SLOT_PIXELS - i*INV_BORDERWIDTH;
		var inst = instance_create_layer(slotX, slotY, "inventorySlots", OInvSlot);
		inst.slotX = slotX;
		inst.slotY = slotY;
		inst.slotNum = slotNum;
		slotNum+=1;
	}
}

button_x = inst.slotX - SLOT_PIXELS - INV_BORDERWIDTH;
button_y = inst.slotY + SLOT_PIXELS + INV_BORDERWIDTH;
button_w = 2*SLOT_PIXELS + 2*INV_BORDERWIDTH;
dialogButton = instance_create_layer(button_x, button_y, layer, OMenuButton);
dialogButton.image_xscale = button_w / dialogButton.sprite_width;


