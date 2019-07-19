//instance_activate_object(OBottleR);
//instance_activate_object(OPoemC);
thisbottle = instance_find(OBottleR, 0);
newy=thisbottle.y + thisbottle.sprite_height;
ychange = newy-y;
y=newy;
for(var i=0; i<instance_number(OPips); i++) {
	_pip = instance_find(OPips, i)
	_pip.y+=ychange;
}
