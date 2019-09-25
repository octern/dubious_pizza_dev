var _key = argument[0];
_str = ds_map_find_value(global.narrations, _key);
if(is_undefined(_str)) _str = "Error: undefined string '"+string(_key)+"' requested";
return _str;