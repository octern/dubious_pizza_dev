var _key = argument[0];
_str = ds_map_find_value(global.narrationHeads, _key);
if(is_undefined(_str)) _str = "";
return _str;