///draw_resources(x, y, resources)
var xx_orig = argument0;
var xx = xx_orig, yy = argument1, resources = argument2;
draw_set_font(fnt_tiny);
draw_set_colour(textcolor);
var numdrawn = 0;
if (resources[? "woodBoost"] > 0) {
    draw_sprite(spr_wood, 0, xx, yy);
    var str = string(floor(100 * resources[? "woodBoost"])) + "%";
    draw_text(xx + 9, yy + 1, str);
    xx += string_width(str) + 12;
    numdrawn += 1;
}
if (resources[? "stoneBoost"] > 0) {
    draw_sprite(spr_stone, 0, xx, yy);
    var str = string(floor(100 * resources[? "stoneBoost"])) + "%";
    draw_text(xx + 9, yy + 1, str);
    xx += string_width(str) + 12;
    numdrawn += 1;
}
if (resources[? "manaBoost"] > 0) {
    draw_sprite(spr_mana, 0, xx, yy);
    var str = string(floor(100 * resources[? "manaBoost"])) + "%";
    draw_text(xx + 9, yy + 1, str);
    xx += string_width(str) + 12;
    numdrawn += 1;
}
if (numdrawn >= 3) {
    yy += 10;
    xx = xx_orig;
}
if (resources[? "techBoost"] > 0) {
    draw_sprite(spr_technology, 0, xx, yy);
    var str = string(floor(100 * resources[? "techBoost"])) + "%";
    draw_text(xx + 9, yy + 1, str);
    xx += string_width(str) + 12;
    numdrawn += 1;
}

return numdrawn;
