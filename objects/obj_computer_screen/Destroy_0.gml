/// @desc: Destroy Icons

var w_cells = array_height_2d(grid);
for(var i = 0; i < w_cells; i++) {
	var h_cells = array_length_2d(grid, i);
	for(var j = 0; j < h_cells; j++) {
		var icon = grid[i, j];
		if(instance_exists(icon)) {
			instance_destroy(icon);
		}
	}
}