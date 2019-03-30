var _curitem = argument[0];
var _curslot = argument[1];

with(_curslot) {
	_key = "tableSlot_"+slotDirection;
	worldSet(_key, _curitem);
	tableInited=false;
}