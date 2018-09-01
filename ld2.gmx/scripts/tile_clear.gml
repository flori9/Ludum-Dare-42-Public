///tile_clear()
image_speed = 0;
image_index = 0;

ds_list_clear(upgrade_options);
ds_map_clear(identifiers);
ds_map_clear(production);

terrain_sprite = -1;
terrain_friend_identifier = -1;
upgradeHint = "";
