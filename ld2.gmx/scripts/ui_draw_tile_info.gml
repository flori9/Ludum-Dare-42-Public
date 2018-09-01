///ui_draw_tile_info(yy, tile, drawCost)
var yy = argument0, tile = argument1, drawCost = argument2, tileID = argument3;
var production = tile_get_production(tile), info = tile_get_info(tile);

draw_set_font(fnt_tiny);
draw_sprite(info[? "sprite"], info[? "image"], x + 3, yy + 2);
draw_set_colour(textcolordark);
draw_text(x + 23, yy + 4, info[? "name"]);
draw_set_colour(textcolor);
draw_text(x + 23, yy + 12, "Level " + string(info[? "level"]));
yy += 23;

draw_set_colour(textcolor);
if (info[? "text"] != "") {
    draw_set_colour(textcolor);
    draw_text(x + 3, yy, info[? "text"]);
    yy += 9;
}
/*if (drawCost && info[? "score"] > 0) {
    draw_set_colour(textcolor);
    draw_text(x + 3, yy, "Points: " + string(info[? "score"]));
    yy += 9;
}*/
if (drawCost && draw_resources(x + 3, yy + 8, info, -1, true)) {
    draw_set_colour(textcolor);
    draw_text(x + 3, yy, "Cost:");
    yy += 20;
}
if (draw_resources(x + 3, yy + 8, production, tileID, false)) {
    draw_set_colour(textcolor);
    draw_text(x + 3, yy, "Production per minute:");
    yy += 20;
}
var boosts = draw_boosts(x + 3, yy + 8, production);
if (boosts) {
    draw_text(x + 3, yy, "Boost to adjacent:");
    yy += 20;
    if (boosts >= 4) yy += 10;
}

ds_map_destroy(production);
ds_map_destroy(info);

return yy;
