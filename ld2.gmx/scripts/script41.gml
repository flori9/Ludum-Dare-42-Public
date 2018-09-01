///draw_resources(x, y, resources)
var xx = argument0, yy = argument1, resources = argument2;
draw_set_font(fnt_tiny);
draw_set_colour(textcolor);
var anydrawn = false;
if (resources[? "wood"] >= 1) {
    draw_sprite(spr_wood, 0, xx, yy);
    draw_text(xx + 9, yy + 1, floor(resources[? "wood"]));
    xx += string_width(floor(resources[? "wood"])) + 12;
    anydrawn = true;
}
if (resources[? "stone"] >= 1) {
    draw_sprite(spr_stone, 0, xx, yy);
    draw_text(xx + 9, yy + 1, floor(resources[? "stone"]));
    xx += string_width(floor(resources[? "stone"])) + 12;
    anydrawn = true;
}
if (resources[? "mana"] >= 1) {
    draw_sprite(spr_mana, 0, xx, yy);
    draw_text(xx + 9, yy + 1, floor(resources[? "mana"]));
    xx += string_width(floor(resources[? "mana"])) + 12;
    anydrawn = true;
}
if (resources[? "tech"] >= 1) {
    draw_sprite(spr_technology, 0, xx, yy);
    draw_text(xx + 9, yy + 1, floor(resources[? "tech"]));
    xx += string_width(floor(resources[? "tech"])) + 12;
    anydrawn = true;
}

return anydrawn;
