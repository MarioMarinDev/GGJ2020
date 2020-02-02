/// scr_db_rooms_add
/// @args name,room,script

// Arguments
var name = argument0;
var rm = argument1;
var script = argument2;

var new_room = ds_map_create();
new_room[? "name"] = name;
new_room[? "room"] = rm;
new_room[? "script"] = script;

ds_list_add(rooms, new_room);
