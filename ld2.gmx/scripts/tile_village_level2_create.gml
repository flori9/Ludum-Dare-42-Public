///tile_village_level2_create()
tile_village_base_create();
image_index = 1;

upgrading_option_requirement_add(upgrading_option_add(tile_city_create),
    "village", 2, 2);
tile_add_identifier("village", 2);

upgradeHint = "Try building more nearby.";
