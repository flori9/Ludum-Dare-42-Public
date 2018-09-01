///upgrading_option_requirement_add(option, requiredIdentifier, requirementMinLevel, requirementMinAmount)
var map = ds_map_create();
map[? "identifier"] = argument1;
map[? "minLevel"] = argument2;
map[? "minAmount"] = argument3;
ds_list_add_map(argument0[? "requirements"], map);
return argument0;
