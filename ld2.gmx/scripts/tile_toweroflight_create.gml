///tile_toweroflight_create()
tile_add_identifier("tower", 1);
tile_add_identifier("toweroflight", 1);
tile_add_identifier("stopDarkness", 0.5);

upgrading_option_requirement_add(upgrading_option_add(tile_toweroflight_level2_create), "magicalvillage", 2, 1);

upgradeHint = "Upgrade the magical#village first.";
