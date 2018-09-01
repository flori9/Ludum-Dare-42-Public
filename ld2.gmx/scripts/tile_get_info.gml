///tile_get_info(tile)
var info = tile_get_info_specific(argument0);
var amountBuilt = 0;
if (ds_map_exists(obj_tiles.upgradesDone, argument0))
    amountBuilt = obj_tiles.upgradesDone[? argument0];
info[? "wood"] = floor(info[? "wood"] * (1 + 0.5 * amountBuilt));
info[? "stone"] = floor(info[? "stone"] * (1 + 0.5 * amountBuilt));
info[? "mana"] = floor(info[? "mana"] * (1 + 0.5 * amountBuilt));
info[? "tech"] = floor(info[? "tech"] * (1 + 0.5 * amountBuilt));
return info;
