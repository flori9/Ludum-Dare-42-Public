///tile_miningvillage_level3_create()
tile_village_base_create();

tile_miningvillage_base_create();

upgrading_make_unique(upgrading_option_add(tile_miningvillage_level4_create), "wincon");

tile_add_identifier("village", 3);
tile_add_identifier("miningvillage", 3);
tile_add_identifier("city", 1);
