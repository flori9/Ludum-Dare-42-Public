///tile_identifier_maxlevel(id)
var maxlevel = 0;
with (obj_tile) {
    if (ds_map_exists(identifiers, argument0))
        maxlevel = identifiers[? argument0];
}
return maxlevel;
