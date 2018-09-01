///tile_identifier_total(id)
var total = 0;
with (obj_tile) {
    if (ds_map_exists(identifiers, argument0))
        total += identifiers[? argument0];
}
return total;
