/// scr_npc_move_to_point
/// @args x,y

// Argumnets
var xx = argument0;
var yy = argument1;

// Set path with gird
grid = scr_npc_grid_update();

x_to = (xx div 32) * 32 + 16;
y_to = (yy div 32) * 32 + 16;
x_start = x;
y_start = y;

if(mp_grid_path(grid, path, x, y, x_to, y_to, 0)) {
	path_start(path, spd, path_action_stop, false);
	return true;
}

return false;
