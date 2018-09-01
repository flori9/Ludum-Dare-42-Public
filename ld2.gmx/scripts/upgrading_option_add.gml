///upgrading_option_add(newcreatescript)
var map = ds_map_create();
ds_map_add_list(map, "requirements", ds_list_create());
map[? "script"] = argument0;
map[? "uniqueFor"] = "";
map[? "globReq"] = "";
ds_list_add_map(upgrade_options, map);
return map;
