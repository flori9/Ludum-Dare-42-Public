///upgrading_perform(option)
var newcreatescript = argument0;

tile_clear();
var info = tile_get_info(newcreatescript);
sprite_index = info[? "sprite"];
image_index = info[? "image"];
previousscript = my_script;
my_script = newcreatescript;
script_execute(newcreatescript);
if (production >= 0) ds_map_destroy(production);
production = tile_get_production(newcreatescript);
obj_resources.gameScore += info[? "score"];
ds_map_destroy(info);

if (ds_map_exists(obj_tiles.upgradesDone, argument0))
    obj_tiles.upgradesDone[? argument0] += 1;
else
    obj_tiles.upgradesDone[? argument0] = 1;

if (instance_exists(obj_bottominfo)) {
    if (obj_bottominfo.canOnlyUpgrade != noone) {
        obj_bottominfo.canOnlyUpgrade = noone;
        obj_bottominfo.text = "The available upgrade is based on the four adjacent areas, so be sure to look around and experiment a bit. Upgrade anything to start. Good luck!";
    } else if (obj_bottominfo.occasion < 0) {
        with (obj_bottominfo) instance_destroy();
        obj_controller.game_paused = false;
    }
}
    
