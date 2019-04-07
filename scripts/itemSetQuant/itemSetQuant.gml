_item = argument0;
_quant = argument1;
var _key = "inv_" + string(global.itemDefinitions[_item, itemProperty.name]);
worldSet(_key, _quant);
if(_quant==0) {itemActivate(0,0);}