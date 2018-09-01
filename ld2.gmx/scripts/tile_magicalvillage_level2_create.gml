///tile_magicalvillage_level2_create()
tile_village_base_create();

//upgrading_option_add(tile_village_level2_create);
tile_add_identifier("village", 2);
tile_add_identifier("magicalvillage", 2);
tile_add_identifier("magicEnough", 1);
//Quick hack to avoid problems
with (obj_tile) {
    if (sprite_index == spr_standingstones)
        tile_add_identifier("magicEnough", 1);
}

upgrading_make_unique(upgrading_option_requirement_add(upgrading_option_add(tile_magicalvillage_level3_create), "toweroflight", 2, 1), "magicalCity");
