///tile_get_production()
switch (argument0) {
    case tile_forest_create:
        return resources_create_production(0, 0, 0, 0,
            0.25, 0, 0, 0);
    case tile_forest_level2_create:
        return resources_create_production(3, 0, 0, 0,
            0.25, 0, 0, 0);
    case tile_forest_level3_create:
        return resources_create_production(5, 0, 0, 0,
            0.25, 0, 0, 0);
    case tile_forest_level4_create:
        return resources_create_production(10, 0, 0, 0,
            0.5, 0, 0, 0);
    case tile_village_create:
        return resources_create_production(0, 0, 0, 0,
            0.25, 0.25, 0, 0);
    case tile_village_level2_create:
        return resources_create_production(0, 0, 0, 0,
            0.5, 0.5, 0, 0);
    case tile_mushroomforest_level2_create:
        return resources_create_production(1, 0, 2, 0,
            0, 0, 0, 0);
    case tile_treetopvillage_create:
        return resources_create_production(5, 0, 1, 0,
            0.5, 0, 0, 0);
    case tile_treetopvillage_level2_create:
        return resources_create_production(10, 0, 2, 0,
            1, 0, 0, 0);
    case tile_stone_level2_create:
        return resources_create_production(0, 3, 0, 0,
            0, 0, 0, 0);
    case tile_stone_level3_create:
        return resources_create_production(0, 7, 0, 0,
            0, 0, 0, 0);
    case tile_miningvillage_create:
        return resources_create_production(0, 2, 0, 0,
            0, 0.5, 0, 0);
    case tile_miningvillage_level2_create:
        return resources_create_production(0, 5, 0, 0,
            0, 1, 0, 0);
    case tile_miningvillage_level3_create:
        return resources_create_production(0, 5, 0, 2,
            0, 2, 0, 0.25);
    case tile_miningvillage_level4_create:
        return resources_create_production(0, 5, 0, 4,
            0, 2, 0, 0.5);
    case tile_magicalvillage_create:
        return resources_create_production(0, 0, 2, 0,
            0.25, 0, 0.25, 0);
    case tile_magicalvillage_level2_create:
        return resources_create_production(0, 0, 5, 0,
            0.5, 0, 0.5, 0);
    case tile_magicalvillage_level3_create:
        return resources_create_production(0, 0, 10, 0,
            1, 0, 1, 0);
    case tile_toweroflight_create:
        return resources_create_production(0, 0, 1, 0,
            0, 0, 0, 0);
    case tile_towerofwater_create:
        return resources_create_production(0, 0, 6, 0,
            0, 0, 0, 0);
    case tile_toweroflight_level2_create:
        return resources_create_production(0, 0, 2, 0,
            0, 0, 0.25, 0);
    case tile_city_create:
        return resources_create_production(0, 0, 0, 2,
            0.5, 0.5, 0, 0);
    case tile_city_level2_create:
        return resources_create_production(0, 0, 0, 5,
            0.5, 0.5, 0, 0.25);
}
return resources_create_production(0, 0, 0, 0, 0, 0, 0, 0);
