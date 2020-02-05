/// scr_computer_icon_exists
/// @args cell_x,cell_y

// Arguments
var cell_x = argument0;
var cell_y = argument1;


// Check if icon exists
if(instance_exists(grid[cell_x, cell_y])) {
	return true;
}
return false;
