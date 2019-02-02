/// initialize the list of items at the beginning of the game

/*
enum itemType{
	noItem,
	eggPurple,
	eggGreen,
	slimeBlue,
	slimeRed,
	len
};
*/

enum itemType{
	noItem,
	poemC,
	poemK,
	len
}
/*,
	poemR,
	poemV,
	bottleW,
	bottleU,
	bottleK,
	bottleR,
	screwdriver,
	tape,
	key,
	box,	
	len
};
*/

enum itemProperty{
	name,
	sprite,
	closeup,
	description,
	getScript,
	quant,
	invSlot,
	len
};

global.itemDefinitions[itemType.len, itemProperty.len] = noone;

// enum, name, sprite, closeup sprite, description, getScript, quant, slot
setItemProperties(itemType.noItem, "nothing", SNothing, 
	SEggPurple, "description", "", 0, -1);
setItemProperties(itemType.poemC, "Cat poem", SPoemC, 
	SPoemC, "I don't think my friend has a cat...", "", 0, 0);
setItemProperties(itemType.poemC, "Kraken poem", SPoemK, 
	SPoemK, "A poem about a kraken. Deep.", "", 1, 1);


global.activeItem = noItem;

enum subRooms{
	RWires,
	len
}

global.roomParents[subRooms.len] = ROne;
