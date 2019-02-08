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
	bottleW,
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
	len
};

global.itemDefinitions[itemType.len, itemProperty.len] = noone;

// Don't manually edit this list! Generate it using https://docs.google.com/spreadsheets/d/1h437OcqBYhETw8EKKBGGYpkJoJ63Tfe0CiDPohsPnmA/edit#gid=441502810
// enum, name, sprite, closeup sprite, description, getScript, quant, slot

itemsSetup(itemType.poemC, "Poem (1)", SPoemC, SPoemC, "I don't think my friend has a cat...", "", 1, 0);
itemsSetup(itemType.poemK, "Poem (2)", SPoemK, SPoemK, "This poem is deep ", "", 1, 1);
itemsSetup(itemType.poemR, "Poem (3)", SPoemR, SPoemR, "I feel bad for this robot ", "", 1, 2);
itemsSetup(itemType.poemB, "Poem (4)", SPoemB, SPoemB, "Bees know things. ", "", 1, 3);
itemsSetup(itemType.bottleW, "White bottle", SBottleW, SBottleW, "A bottle of white liquid. Should this be refrigerated?", "", 1, 4);
itemsSetup(itemType.bottleU, "Blue bottle", SBottleU, SBottleU, "A bottle of water. Survival odds ++!", "", 1, 5);
itemsSetup(itemType.bottleK, "Black bottle", SBottleK, SBottleK, "A bottle of inky-black, viscous liquid", "", 1, 6);
itemsSetup(itemType.bottleY, "Yellow bottle", SBottleY, SBottleY, "A thick, golden liquid", "", 1, 7);
itemsSetup(itemType.screwdriver, "Screwdriver", SScrewdriver, SScrewdriver, "A screwdriver. F**k yeah!", "", 1, 8);
itemsSetup(itemType.tape, "Electrical tape", STape, STape, "Electrical tape", "", 1, 9);
itemsSetup(itemType.key, "Key", SEggPurple, SEggPurple, "Use keys to open doors", "", 1, 10);
itemsSetup(itemType.box, "Pizza box", SEggGreen, SEggGreen, "Where did this pizza box come from?", "", 1, 11);

global.activeItem = itemType.noItem;
global.closeupItem = itemType.noItem;

enum subRooms{
	RWires,
	len
}

global.roomParents[subRooms.len] = ROne;
