/// @desc Add item definition to itemDefinitions array
/// @param itemType type of item enum
/// @param name player-visible Name of item
/// @param spriteIndex Index of sprite to show
/// @param closeupIndex Index of sprite to show when item is viewed from inventory
/// @param desc text to show in closeup
/// @param getScr Script to execute when picked up
/// @param quant quantity in inventory
/// @invSlot default inventory slot for this item
/*
 
var _itemType=argument0;
var _name=argument1;
var _sprite=argument2;
var _close=argument3;
var _description=argument4;
var _getScript=argument5;
var _quant=argument6;
var _invSlot=argument7;

global.itemDefinitions[_itemType, itemProperty.name] = _name;
global.itemDefinitions[_itemType, itemProperty.sprite] = _sprite;
global.itemDefinitions[_itemType, itemProperty.closeup] = _close;
global.itemDefinitions[_itemType, itemProperty.description] = _description;
global.itemDefinitions[_itemType, itemProperty.getScript] = _getScript;
global.itemDefinitions[_itemType, itemProperty.quant] = _quant;
global.itemDefinitions[_itemType, itemProperty.invSlot] = _invSlot;

var _slotObj = instance_find(OInvSlot, _invSlot);
if(_slotObj > 0) {
	_slotObj.itemInSlot = _itemType;
}

return(_itemType);