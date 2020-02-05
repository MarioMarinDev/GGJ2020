/// scr_computer_icon_add
/// @arg sprite,cell_x,cell_y

// Arguments
var spr = argument0;
var cell_x = argument1;
var cell_y = argument2;

// Local variable
var type = icon_types.normal;

// Get icon type
switch(spr) {
	// Virus icons
	case spr_icon_404:
	case spr_icon_satan:
	case spr_icon_bug:
		type = icon_types.virus;		
	break;
	
	// Trash icon
	case spr_icon_trash:
		type = icon_types.trash;
	break;
}

// Create icon
var xx = limit_x1 + (cell_x * icon_size);
var yy = limit_y1 + (cell_y * icon_size);
var new_icon = instance_create_depth(xx, yy, depth - 5, obj_computer_icon);
new_icon.sprite_index = spr;
new_icon.computer = id;
new_icon.type = type;

// Add icon to computer's grid
grid[cell_x, cell_y] = new_icon;
