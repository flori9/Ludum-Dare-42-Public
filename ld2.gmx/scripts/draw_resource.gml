///draw_resource(xx, yy, name, sprite, index, resources, isCost)
var xx = argument0, yy = argument1, name = argument2, index = argument4, resources = argument5, isCost = argument6, currentAmountOfResource = argument7;
if (resources[? name] >= 1) {
    draw_set_colour(textcolor);
    draw_sprite(argument3, 0, xx, yy);
    var amount = resources[? name];
    var amountShown = floor(amount);
    if (index >= 0)
        with (index) {
            multiplier = get_production_multiplier(name + "Boost");
            if (multiplier > 1) {
                amount *= multiplier;
                amountShown = string_replace_all(string_replace_all(string_format(amount, -1, 1), ".0", ""), " ", "");
                draw_set_color(obj_ui.textcolorgreen);
            }
        }
    if (isCost && amount > currentAmountOfResource) {
        draw_set_color(obj_ui.textcolorred);
    }
    draw_text(xx + 9, yy + 1, string(amountShown));
    xx += string_width(string(amountShown)) + 12;
}

return xx;
