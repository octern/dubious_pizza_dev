//instance_activate_object(OBottleR);
//instance_activate_object(OPoemC);
thisbottle = instance_find(OBottleR, 0);
newy=thisbottle.y + thisbottle.sprite_height;
ychange = newy-y;
y=newy;
while(instance_number(OPips)>0) {
	piptogo = instance_find(OPips, 0);
	show_debug_message("destroying pips" + string(piptogo));
	instance_destroy(instance_find(OPips, 0));
// let's not move the pips, let's just destroy them.
//	_pip = instance_find(OPips, i)
//	_pip.y+=ychange;
}
