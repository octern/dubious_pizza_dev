// // if (live_call()) return live_result;

picmargin = 32;
size_factor=.8;

pip_coords=ds_map_create();

pip_tlx=x+picmargin;
pip_blx=x+picmargin;
pip_trx=x+sprite_width-picmargin;
pip_brx=x+sprite_width-picmargin;
pip_tly=y+picmargin;
pip_bly=y+sprite_height-picmargin;
pip_try=y+picmargin;
pip_bry=y+sprite_height-picmargin;

pip_h = sprite_get_height(SPips) * size_factor;
pip_w = sprite_get_width(SPips) * size_factor;

ds_map_replace(pip_coords, "tlx", x+picmargin);
ds_map_replace(pip_coords, "blx", x+picmargin);
ds_map_replace(pip_coords, "trx", x+sprite_width-picmargin-pip_w);
ds_map_replace(pip_coords, "brx", x+sprite_width-picmargin-pip_w);
ds_map_replace(pip_coords, "tly", y+picmargin);
ds_map_replace(pip_coords, "bly", y+sprite_height-picmargin-pip_h);
ds_map_replace(pip_coords, "try", y+picmargin);
ds_map_replace(pip_coords, "bry", y+sprite_height-picmargin-pip_h);

for(var i=0; i<ds_list_size(solution); i++) {
//	show_debug_message("pip" + string(i) + " is " + solution[| i] + " out of " + string(ds_list_size(solution)));
	xkey=solution[| i]+"x";
	ykey=solution[| i]+"y";
	pipx = ds_map_find_value(pip_coords, xkey);
	pipy = ds_map_find_value(pip_coords, ykey);
	pip=instance_create_depth(pipx, pipy, depth-1, OPips);
	pip.image_index=sprite_get_number(pip.sprite_index)-1;
	pip.pip_index=i;
	pip.image_speed=0;
	pip.image_xscale=size_factor;
	pip.image_yscale=size_factor;
	pip.corner = solution[| i];
	if(solution[| i]=="tl" or solution[| i]=="tr") {
		ds_map_replace(pip_coords, ykey, pipy + pip.sprite_height + 5);
	}
	if(solution[| i]=="bl" or solution[| i]=="br") {
		ds_map_replace(pip_coords, ykey, pipy - pip.sprite_height - 5);
	}	
}