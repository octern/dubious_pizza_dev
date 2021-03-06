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
	screwdriver,
	tape,
	key,
	box,	
	bottleR,
	bottleU,
	bottleK,
	bottleY,
	poemC,
	poemK,
	poemR,
	poemB,
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

itemsSetup(itemType.screwdriver, "Screwdriver", SScrewdriverCU, SScrewdriverCU, "A screwdriver. If all those Japanese flash escape games I played in high school are any indication, I am about to f**k this room's s**t up. ", "", global.testAllTheItems, 0, OScrewdriver);
itemsSetup(itemType.tape, "Electrical tape", STape, STape, "Electrical tape", "", global.testAllTheItems, 1, OTape);
itemsSetup(itemType.key, "Key", SKey, SKey, "Save keys to open doors", "", global.testAllTheItems, 2, OKey);
itemsSetup(itemType.box, "Pizza box", SPizzaBox, SPizzaBox, "Where did this pizza box come from?", "", global.testAllTheItems, 3, OPizzaBox);
itemsSetup(itemType.bottleR, "Red bottle", SBottleR, SBottleR, "Oh shit. I'm just going to assume this is cherry juice.", "", global.testAllTheItems, 4, OBottleR);
itemsSetup(itemType.bottleU, "Blue bottle", SBottleU, SBottleU, "A bottle of water. Survival odds ++!", "", global.testAllTheItems, 5, OBottleU);
itemsSetup(itemType.bottleK, "Black bottle", SBottleK, SBottleK, "A bottle of inky-black, viscous liquid", "", global.testAllTheItems, 6, OBottleK);
itemsSetup(itemType.bottleY, "Yellow bottle", SBottleY, SBottleY, "A bottle of thick, golden liquid", "", global.testAllTheItems, 7, OBottleY);
itemsSetup(itemType.poemC, "Poem (1)", SPoemC2, SPoemC2, "I don't think my friend has a cat...", "", global.testAllTheItems, 8, OPoemC);
itemsSetup(itemType.poemK, "Poem (2)", SPoemK2, SPoemK2, "This poem is deep ", "", global.testAllTheItems, 9, OPoemK);
itemsSetup(itemType.poemR, "Poem (3)", SPoemR2, SPoemR2, "I feel bad for this robot ", "", global.testAllTheItems, 10, OPoemR);
itemsSetup(itemType.poemB, "Poem (4)", SPoemB3, SPoemB3, "Bees know things. ", "", global.testAllTheItems, 11, OPoemB);

global.activeItem = itemType.noItem;
global.closeupItem = itemType.noItem;

enum subRooms{
	RWires,
	RToolbox,
	len
}

global.roomParents[RWires] = RThree;
global.roomParents[RPostit] = RFour;
global.roomParents[RToolbox] = ROne;
global.roomParents[subRooms.len] = ROne;
