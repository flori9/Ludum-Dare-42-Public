///resources_create_production(wood, stone, mana, tech, woodBoost, stoneBoost, manaBoost, techBoost)
var newProduction = ds_map_create();
newProduction[? "wood"] = argument0;
newProduction[? "stone"] = argument1;
newProduction[? "mana"] = argument2;
newProduction[? "tech"] = argument3;

newProduction[? "woodBoost"] = argument4;
newProduction[? "stoneBoost"] = argument5;
newProduction[? "manaBoost"] = argument6;
newProduction[? "techBoost"] = argument7;
return newProduction;
