/// scr_computer_icon_arrange

var w_cells = array_height_2d(grid);
for(var i = 0; i < w_cells; i++) {
	var h_cells = array_length_2d(grid, i);
	for(var j = 0; j < h_cells; j++) {
		var icon = grid[i, j];
		if(instance_exists(icon)) {
			icon.x = limit_x1 + (i* icon_size);
			icon.y = limit_y1 + (j * icon_size);
			icon.xo = icon.x;
			icon.yo = icon.y;
		}
	}
}