// this controls the creation and display of inv text boxes.

instance_deactivate_object(OInvSlot);
instance_deactivate_object(OInvMemory);
instance_deactivate_object(OInvMag);
item_string = global.itemDefinitions[global.closeupItem, itemProperty.description];
target_width = 380;

invtext = instance_create_depth(613, 127,1,OInvText);
widthFactor = target_width / invtext.sprite_width

invtext.image_xscale = widthFactor;
invtext.item_string = global.itemDefinitions[global.closeupItem, itemProperty.description];
invtext.item_obj = global.itemDefinitions[global.closeupItem, itemProperty.object];
invtext.is_poem = object_is_ancestor(invtext.item_obj, OPoem);

// The step event is where the text box sets font and determines its size.
// we manually run that now so that the next box can be positioned appropriately
with(invtext) { event_perform(ev_step, 0); }

/*
invtext2 = instance_create_depth(613, 127 + 80 + invtext.text_height,1,OInvText);
invtext2.image_xscale = widthFactor;
invtext2.item_string = global.itemDefinitions[global.closeupItem, itemProperty.description];
invtext2.item_obj = global.itemDefinitions[global.closeupItem, itemProperty.object];
invtext2.is_poem = object_is_ancestor(invtext2.item_obj, OPoem);
with(invtext2) { event_perform(ev_step, 0); }
*/