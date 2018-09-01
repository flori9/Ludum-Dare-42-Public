///instance_nearest_x(object)
var nearest = -1, best = 10000000;
with (argument0)
{
    if (abs(x - other.x) < best)
    {
        nearest = id;
        best = abs(x - other.x);
    }
}

return nearest;


