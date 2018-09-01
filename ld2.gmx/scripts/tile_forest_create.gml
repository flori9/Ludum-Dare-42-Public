///tile_forest_create()
tile_forest_base_create();

production_wood = 5;
upgrading_option_requirement_add(upgrading_option_add(tile_treetopvillage_create), "forest", 1, 4);

upgrading_option_add(tile_forest_level2_create);


tile_add_identifier("forest", 1);
