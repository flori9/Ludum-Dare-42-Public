///string_split(string, delimiter)
var str = argument0, delimiter = argument1;
var pos = string_pos(delimiter, str);
var arr, arrlen = 0;
while (pos != 0)
{
    arr[arrlen++] = string_copy(str, 1, pos - 1);
    str = string_delete(str, 1, pos);
    pos = string_pos(delimiter, str);
}
arr[arrlen] = str;
return arr;


