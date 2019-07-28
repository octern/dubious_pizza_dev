//instance_activate_object(OBottleR);
//instance_activate_object(OPoemC);
thisbottle = instance_find(OBottleR, 0);
newy=thisbottle.y + thisbottle.sprite_height;
ychange = newy-y;
y=newy;
for(var i=0; i<instance_number(OPips); i++) {
	instance_destroy(instance_find(OPips, i));
// let's not move the pips, let's just destroy them.
//	_pip = instance_find(OPips, i)
//	_pip.y+=ychange;
}
