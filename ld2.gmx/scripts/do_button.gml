///do_button(x, y, width, text)
var mouseover = 0, clicked = false;

if (mouse_in_box_wh(argument0, argument1, argument2, 11))
{
    mouseover = 1;
    if (mouse_check_button_pressed(mb_left) && age > 3)
        clicked = true;
}
draw_panel_sprite(argument0, argument1, argument2, 11, spr_button, mouseover);
draw_set_font(fnt_tiny);
draw_set_color(textcolor);
draw_set_halign(fa_center);
draw_text(iif(os_browser == browser_not_a_browser, argument0 + argument2 / 2, round(argument0 + argument2 / 2 + 1)), argument1 + 3, argument3);
draw_set_halign(fa_left);

return clicked;
