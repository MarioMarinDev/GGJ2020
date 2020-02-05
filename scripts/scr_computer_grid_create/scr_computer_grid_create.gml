/// scr_computer_grid_create

var w_cells = 10;
var h_cells = 5;

grid = [];

for(var i = 0; i < w_cells; i++) {
	for(var j = 0; j < h_cells; j++) {
		grid[i, j] = noone;
	}
}
