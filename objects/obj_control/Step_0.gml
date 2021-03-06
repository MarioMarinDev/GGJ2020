/// @desc: Main Control

scr_input();

// Dragging control
if(!instance_exists(global.dragging)) {
	global.dragging = noone;
}

// Create a room controller
if(!instance_exists(room_controller) && !room_searched) {
	room_searched = true;
	var rooms_count = ds_list_size(rooms);
	for(var i = 0; i < rooms_count; i++) {
		var rm = rooms[| i];
		if(room == rm[? "room"]) {
			room_controller = instance_create_depth(x, y, depth_o, obj_room_controller);
			room_controller.script = rm[? "script"];
			break;
		}
	}
}