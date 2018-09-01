///draw_resources(x, y, resources, index, isCost)

var xx = argument0, yy = argument1, resources = argument2, index = argument3, isCost = argument4;
var xx_orig = xx;
draw_set_font(fnt_tiny);
draw_set_colour(textcolor);

xx = draw_resource(xx, yy, "wood", spr_wood, index, resources, isCost, obj_resources.wood);
xx = draw_resource(xx, yy, "stone", spr_stone, index, resources, isCost, obj_resources.stone);
xx = draw_resource(xx, yy, "mana", spr_mana, index, resources, isCost, obj_resources.mana);
xx = draw_resource(xx, yy, "tech", spr_technology, index, resources, isCost, obj_resources.tech);

return xx_orig != xx;
