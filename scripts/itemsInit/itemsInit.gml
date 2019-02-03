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
	startQuant,
	invSlot,
	len
};

global.itemDefinitions[itemType.len, itemProperty.len] = noone;

// enum, name, sprite, closeup sprite, description, getScript, quant, slot
itemsSetup(itemType.noItem, "nothing", SNothing, 
	SEggPurple, "description", "", 0, -1);
itemsSetup(itemType.poemC, "Cat poem", SPoemC, 
	SPoem, "I don't think my friend has a cat...", "", 1, 0);
itemsSetup(itemType.poemK, "Kraken poem", SPoemK, 
	SPoem, "A poem about a kraken. Deep.", "", 1, 1);


global.activeItem = itemType.noItem;

enum subRooms{
	RWires,
	len
}

global.roomParents[subRooms.len] = ROne;
