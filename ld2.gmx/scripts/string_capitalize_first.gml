///string_capitalize_first(str)
if (string_length(argument0) == 0)
    return "";
return string_upper(string_copy(argument0, 1, 1)) + string_copy(argument0, 2, string_length(argument0) - 1);


