global.itemDefinitions[itemType.poemR, itemProperty.description] = @"A page typed in a monospaced font##desc@@

I dreamed I was a robot, at work in a factory full of robots.
We made widgets. 
Bend, shape, assemble.
Repeat.
Repeat.
Repeat. 
Each focused on our own task. 
If I turned my head to the left, I could see a window.
In the distance, a hillside with a tree. 
I kept making widgets. 
It got harder and harder.
I slowed.
My arms began to creak. 
My left arm froze in place, pointing toward the window. 
Now I make widgets with the other,
More slowly, 
Wishing I could follow the direction of my arm.
##poem@@
-----

It sounds like my friend has been needing help. Should I have been listening better?##desc@@";


global.itemDefinitions[itemType.poemK, itemProperty.description] = @"A page, somewhat wrinkled, written in a flowing script##desc@@

I dreamed I was a kraken, immense and slow. 
I slept away ages in the watery deeps, then opened my thousand eyes to find I'd drifted. 
I know all the secrets of the ocean, but nothing of these shapes beyond the surface, or the sounds that come down from them through the waters. 
Will they ever look back at me?##poem@@
-----

Now I feel guilty about not staying in touch more. It sounds like my friend's really been feeling isolated.##desc@@";

global.itemDefinitions[itemType.poemB, itemProperty.description] = @"A page with two of the corners trimmed, written with a precise hand##desc@@

I dreamed I was a bee, seeking flowers
Dancing my excitement to my sibling bees.
But I couldn't find the right steps
and they ignored me and the sustenance I longed to share.
##poem@@
-----

I always felt like I understood my friend. Maybe they never felt understood.##desc@@";

global.itemDefinitions[itemType.poemC, itemProperty.description] = @"A stained page with jagged text##desc@@

I dreamed I was a cat. 
Once, I was a giant predator. 
Humans reshaped me in their image.
But the joke's on them:
Up in the trees, 
All squirrels are my prey. 
All mice,
Any slow bird. 
I am no longer large,
But I kill as I please
And when my prey feel my fangs
They fear me

##poem@@-----

...I don't think my friend has ever had a cat. 
Also, this is the kind of thing we sometimes hear from people who want to become vampires for the wrong reasons.##desc@@";

//global.easteregg_poem = @"
if(global.longPoem) {
	global.itemDefinitions[itemType.poemK, itemProperty.description] = @"A long, scrolling page, written by an inquisitive hand##desc@@

Oh shit. I'm just going to assume this is cherry juice.
It is not a merry juice
indeed, tis a juice of melancholy
caused by my old friend's shut-in folly




If I'm to plumb this mystery
which (no pun intended) holds me captive
I must retrace our history
and with wit and insight, be adaptive.




Am I in danger? Or is my friend --
hemmed in, as they are, by regrets past --
a man obsessed with their own end
or a burgeoning iconoclast?




The solution that I seek
may lie in wisdom from ancestors
I will save keys to open doors
And ignore those tips from Nester




This doggerel I offer you
merely seeks to fill your time
an indulgence you will soon undo,
yet -- omg, a metal slime!



##poem@@
----

My friend seems to be exploring something I don't understand, perhaps the secrets underlying our very universe. ##desc@@";
}

if(global.beeDialogTest) {
	global.itemDefinitions[itemType.poemB, itemProperty.description] = ds_map_find_value(global.dialogs, "testDialog");
}


global.credits = array_create(10);
global.credits[0] = @"Words by
Elizabeth Bartmess
and Michael Cohn";
global.credits[1] = @"Code and pixels by
Michael Cohn";
