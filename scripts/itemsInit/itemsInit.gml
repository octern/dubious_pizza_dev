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
	poemR,
	poemB,
	bottleR,
	bottleU,
	bottleK,
	bottleY,
	screwdriver,
	tape,
	key,
	box,	
	len
};

enum itemProperty{
	name,
	sprite,
	closeup,
	description,
	getScript,
	startQuant,
	invSlot,
	object,
	len
};

global.itemDefinitions[itemType.len, itemProperty.len] = noone;

// Don't manually edit this list! Generate it using https://docs.google.com/spreadsheets/d/1h437OcqBYhETw8EKKBGGYpkJoJ63Tfe0CiDPohsPnmA/edit#gid=441502810
// enum, name, sprite, closeup sprite, description, getScript, quant, slot

itemsSetup(itemType.poemC, "Poem (1)", SPoemC, SPoemCHD, "I don't think my friend has a cat...", "", 0, 0, OPoemC);
itemsSetup(itemType.poemK, "Poem (2)", SPoemK, SPoemKHD, "This poem is deep ", "", 0, 1, OPoemK);
itemsSetup(itemType.poemR, "Poem (3)", SPoemR, SPoemR, "I feel bad for this robot ", "", 0, 2, OPoemR);
itemsSetup(itemType.poemB, "Poem (4)", SPoemB, SPoemB, "Bees know things. ", "", 0, 3, OPoemB);
itemsSetup(itemType.bottleR, "Red bottle", SBottleR, SBottleR, "Oh shit. I'm just going to assume this is cherry juice.", "", 0, 4, OBottleR);
itemsSetup(itemType.bottleU, "Blue bottle", SBottleU, SBottleU, "A bottle of water. Survival odds ++!", "", 0, 5, OBottleU);
itemsSetup(itemType.bottleK, "Black bottle", SBottleK, SBottleK, "A bottle of inky-black, viscous liquid", "", 0, 6, OBottleK);
itemsSetup(itemType.bottleY, "Yellow bottle", SBottleY, SBottleY, "A thick, golden liquid", "", 0, 7, OBottleY);
itemsSetup(itemType.screwdriver, "Screwdriver", SScrewdriverCU, SScrewdriverCU, "A screwdriver. F**k yeah!", "", 0, 8, OScrewdriver);
itemsSetup(itemType.tape, "Electrical tape", STape, STape, "Electrical tape", "", 0, 9, OTape);
itemsSetup(itemType.key, "Key", SKey, SKey, "Save keys to open doors", "", 0, 10, OKey);
itemsSetup(itemType.box, "Pizza box", SPizzaBox, SPizzaBox, "Where did this pizza box come from?", "", 0, 11, OPizzaBox);


global.activeItem = itemType.noItem;
global.closeupItem = itemType.noItem;

enum subRooms{
	RWires,
	RToolbox,
	len
}

global.roomParents[RWires] = RThree;
global.roomParents[RToolbox] = ROne;
global.roomParents[subRooms.len] = ROne;
