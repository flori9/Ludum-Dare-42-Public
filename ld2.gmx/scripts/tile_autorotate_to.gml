///tile_autorotate_to(identifier)
if (tile_right >= 0 && ds_map_exists(tile_right.identifiers, argument0)) {
    image_index = 0;
    exit;
}
if (tile_top >= 0 && ds_map_exists(tile_top.identifiers, argument0)) {
    image_index = 1;
    exit;
}
if (tile_bottom >= 0 && ds_map_exists(tile_bottom.identifiers, argument0)) {
    image_index = 3;
    exit;
}
if (tile_left >= 0 && ds_map_exists(tile_left.identifiers, argument0)) {
    image_index = 2;
    exit;
}
