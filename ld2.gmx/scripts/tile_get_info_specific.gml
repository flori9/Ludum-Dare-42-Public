///tile_get_info(tile)
switch (argument0) {
    case tile_grass_create: return tileinfo_create(0, 0, 0, 0, spr_field, 1, 0, "Field", 1);
    case tile_water_create: return tileinfo_create(0, 0, 0, 0, spr_water, 1, 0, "Water", 1);
    case tile_smalltrees_create: return tileinfo_create(1, 0, 0, 0, spr_smalltrees, 0, 0, "Forest", 0);
    case tile_forest_create: return tileinfo_create(2, 0, 0, 0, spr_forest, 0, 0, "Forest", 1);
    case tile_forest_level2_create: return tileinfo_create(2, 0, 0, 0, spr_forest, 1, 0, "Forest", 2);
    case tile_forest_level3_create: return tileinfo_create(5, 0, 0, 0, spr_forest, 2, 0, "Forest", 3);
    case tile_forest_level4_create: return tileinfo_create(8, 5, 0, 0, spr_forest, 3, 1, "Forest", 4);
    case tile_mushroomforest_create: return tileinfo_create(2, 0, 10, 0, spr_magicalforest, 0, 0, "Mushroom Forest", 1);
    case tile_mushroomforest_level2_create: return tileinfo_create(6, 0, 0, 0, spr_magicalforest, 1, 0, "Mushroom Forest", 2);
    case tile_village_create: return tileinfo_create(5, 0, 0, 0, spr_houses, 0, 2, "Village", 1);
    case tile_village_level2_create: return tileinfo_create(10, 4, 0, 0, spr_houses, 1, 3, "Village", 2);
    case tile_treetopvillage_create: return tileinfo_create(15, 0, 0, 0, spr_treetopvillage, 0, 2, "Treetop Village", 1);
    case tile_treetopvillage_level2_create: return tileinfo_create(25, 0, 5, 0, spr_treetopvillage, 1, 5, "Treetop Village", 2);
    case tile_stone_create: return tileinfo_create(0, 0, 10, 0, spr_stones, 0, 0, "Rocks", 1);
    case tile_stone_level2_create: return tileinfo_create(8, 0, 0, 0, spr_stones, 1, 0, "Rocks", 2);
    case tile_stone_level3_create: return tileinfo_create(10, 3, 0, 0, spr_stones, 2, 0, "Rocks", 3);
    case tile_miningvillage_create: return tileinfo_create(5, 2, 0, 0, spr_miningvillage, 0, 3, "Mining Village", 1);
    case tile_miningvillage_level2_create: return tileinfo_create(10, 5, 0, 0, spr_miningvillage, 1, 5, "Mining Village", 2);
    case tile_miningvillage_level3_create: return tileinfo_create(5, 35, 0, 0, spr_miningvillage, 2, 5, "Mining Research City", 1);
    case tile_miningvillage_level4_create: return tileinfo_add_text(tileinfo_create(20, 150, 0, 35, spr_miningvillage, 3, 10, "Light Research City", 1), "Stops the darkness.");
    case tile_magicalvillage_create: return tileinfo_create(5, 0, 1, 0, spr_magicalvillage, 0, 3, "Magical Village", 1);
    case tile_magicalvillage_level2_create: return tileinfo_create(14, 2, 5, 0, spr_magicalvillage, 1, 5, "Magical Village", 2);
    case tile_magicalvillage_level3_create: return tileinfo_create(35, 10, 10, 0, spr_magicalvillage, 2, 10, "Magical City", 1);
    case tile_docks_create: return tileinfo_create(5, 0, 0, 0, spr_docks, 0, 2, "Docks", 1);
    case tile_black_create: return tileinfo_create(0, 0, 0, 0, spr_blackness, 0, 0, "Darkness", 1);
    case tile_toweroflight_create: return tileinfo_add_text(tileinfo_create(25, 0, 15, 0, spr_toweroflight, 0, 5, "Tower of Light", 1), "Slows the darkness.");
    case tile_toweroflight_level2_create: return tileinfo_add_text(tileinfo_create(50, 0, 25, 0, spr_toweroflight, 1, 10, "Tower of Light", 2), "Slows the darkness more.");
    case tile_towerofwater_create: return tileinfo_create(0, 25, 25, 0, spr_towerofwater, 0, 15, "Tower of Water", 1);
    case tile_city_create: return tileinfo_create(5, 30, 0, 0, spr_moderntown, 0, 10, "City", 1);
    case tile_city_level2_create: return tileinfo_create(10, 100, 0, 5, spr_moderntown, 1, 20, "City", 2);
    case tile_standingstones_create: return tileinfo_create(0, 0, 0, 0, spr_standingstones, 0, 5, "Stone Circle", 1);
    case tile_standingstones_level2_create: return tileinfo_add_text(tileinfo_create(0, 100, 100, 0, spr_standingstones, 1, 5, "Stone Circle", 2), "Stops the darkness.");
}
return tileinfo_create(0, 0, 0, 0, spr_field, 0, 0, "", 0);
