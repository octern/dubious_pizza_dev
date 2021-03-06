/// @desc Add item definition to itemDefinitions array
/// @param itemType type of item enum
/// @param name player-visible Name of item
/// @param spriteIndex Index of sprite to show
/// @param closeupIndex Index of sprite to show when item is viewed from inventory
/// @param desc text to show in closeup
/// @param getScr Script to execute when picked up
/// @param quant quantity in inventory
/// @invSlot default inventory slot for this item
/// @object corresponding object


var _itemType=argument0;
var _name=argument1;
var _sprite=argument2;
var _close=argument3;
var _description=argument4;
var _getScript=argument5;
var _quant=argument6;
var _invSlot=argument7;
var _object=argument8

global.itemDefinitions[_itemType, itemProperty.name] = _name;
global.itemDefinitions[_itemType, itemProperty.sprite] = _sprite;
global.itemDefinitions[_itemType, itemProperty.closeup] = _close;
global.itemDefinitions[_itemType, itemProperty.description] = _description;
global.itemDefinitions[_itemType, itemProperty.getScript] = _getScript;
global.itemDefinitions[_itemType, itemProperty.startQuant] = _quant;
global.itemDefinitions[_itemType, itemProperty.invSlot] = _invSlot;
global.itemDefinitions[_itemType, itemProperty.object] = _object;

var _slotObj = instance_find(OInvSlot, _invSlot);
if(_slotObj > 0) {
	_slotObj.itemInSlot = _itemType;
}

var _itemName = string(global.itemDefinitions[_itemType, itemProperty.name]);
_key = "inv_" + _itemName;
worldSet(_key, _quant);
_key = "loc_" + _itemName;
worldSet(_key, "origin");

return(_itemType);