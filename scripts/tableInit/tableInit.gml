if(!tableInited) {
	tableInited=true;
	_key = "tableSlot_"+slotDirection;
	if(worldYet(_key)) {
		_contents = worldGet(_key);
		if(_contents > -1) {
			generateItemOnTable(_contents, id);
		}
	}
}
