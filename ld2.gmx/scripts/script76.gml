///tile_grass_create()
sprite_index = spr_field;

var createTowerOfLight = upgrading_option_add(tile_toweroflight_create);
upgrading_option_requirement_add(createTowerOfLight, "magicalvillage", 0, 1);
upgrading_make_unique(createTowerOfLight, "toweroflight");

var createMagicalVillage = upgrading_option_add(tile_magicalvillage_create);
upgrading_option_requirement_add(createMagicalVillage, "mushroomForest", 0, 1);

var createForest = upgrading_option_add(tile_smalltrees_create);
upgrading_option_requirement_add(createForest, "forest", 0, 3);
upgrading_option_requirement_add(createForest, "village", 0, 1);

var createMiningVillage = upgrading_option_add(tile_miningvillage_create);
upgrading_option_requirement_add(createMiningVillage, "stone", 0, 2);

var createVillage = upgrading_option_add(tile_village_create);

tile_add_identifier("field", 1);
