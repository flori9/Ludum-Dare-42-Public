///upgrading_get_current_option()
if (instance_exists(obj_bottominfo) && obj_bottominfo.canOnlyUpgrade != noone && obj_bottominfo.canOnlyUpgrade != id)
    return -1;
var returnValIfFailed = -1;
var upgrade_options_length = ds_list_size(upgrade_options);
for (var i = 0; i < upgrade_options_length; i++) {
    var upgrade_option = upgrade_options[| i];
    //Check for requirements
    var failed = false;
    var requirements = upgrade_option[? "requirements"];
    
    for (var j = 0; j < ds_list_size(requirements); j++) {
        var requirement = requirements[| j];
        var amountFound = 0;
        for (var k = 0; k < ds_list_size(adjecent_tiles); k++) {
            var adjecentTile = adjecent_tiles[| k];
            if (ds_map_exists(adjecentTile.identifiers, requirement[? "identifier"]))
                if (adjecentTile.identifiers[? requirement[? "identifier"]] >= requirement[? "minLevel"])
                    amountFound += 1;
        }
        if (amountFound < requirement[? "minAmount"]) {
            failed = true;
            break;
        }
    }
    
    if (! failed) {
        var unique = upgrade_option[? "uniqueFor"];
        if (unique != "")
            with (obj_tile) {
                if (ds_map_exists(identifiers, unique)) {
                    failed = true;
                    returnValIfFailed = -2;
                }
            }
        
        var globReq = upgrade_option[? "globReq"];
        var success = true;
        if (globReq != "") {
            success = false;
            with (obj_tile) {
                if (ds_map_exists(identifiers, globReq))
                    success = true;
            }
        }
        if (!success)
            failed = true;
    }
    if (! failed)
        return upgrade_option[? "script"];
}
return returnValIfFailed;
