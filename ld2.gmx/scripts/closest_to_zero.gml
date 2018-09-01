///closest_to_zero(num1, num2, ...)
var best = argument[0];
for (var i = 1; i < argument_count; i++)
{
    if (abs(best) > abs(argument[i]))
        best = argument[i];
}
return best;


