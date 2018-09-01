///surface_make_usable(surface, w, h)
var this_surface = argument0, ww = argument1, hh = argument2;

var surface_exists_now = surface_exists(this_surface), please_clear_surface = false;
if (surface_exists_now && (surface_get_width(this_surface) != ww || surface_get_height(this_surface) != hh))
{
    surface_resize(this_surface, ww, hh);
    show_debug_message("(resize surface)");
    please_clear_surface = true;
}
else if (! surface_exists_now)
{
    this_surface = surface_create(ww, hh);
    show_debug_message("(create surface)");
    please_clear_surface = true;
}

if (please_clear_surface)
{
    //Clear the surface (it might otherwise contain junk)
    surface_set_target(this_surface);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}

has_cleaned_surface = please_clear_surface;

return this_surface;


