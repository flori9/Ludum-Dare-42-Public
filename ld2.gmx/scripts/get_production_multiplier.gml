///get_production_multiplier(boostName)
var boostName = argument0;
var boost = 1;
for (var i = 0; i < ds_list_size(adjecent_tiles); i++) {
    boost += adjecent_tiles[| i].production[? boostName];
}
return boost;
