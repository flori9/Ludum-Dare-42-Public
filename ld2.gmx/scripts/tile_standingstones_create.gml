///tile_standingstones_create()
terrain_sprite = spr_sandground;
terrain_friend_identifier = "sandfriend";
terrain_friend_level = 1;

tile_add_identifier("sand", 1);
tile_add_identifier("sandfriend", 1);

upgrading_add_glob_req(upgrading_make_unique(upgrading_option_add(tile_standingstones_level2_create), "wincon"), "magicEnough");

upgradeHint = "Use magic.";
