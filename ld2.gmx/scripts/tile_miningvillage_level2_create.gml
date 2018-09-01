///tile_miningvillage_create()
tile_village_base_create();

tile_miningvillage_base_create();

tile_add_identifier("village", 2);
tile_add_identifier("miningvillage", 2);

upgrading_option_requirement_add(upgrading_option_add(tile_miningvillage_level3_create),
    "village", 2, 1);

upgradeHint = "Try building more nearby.";
