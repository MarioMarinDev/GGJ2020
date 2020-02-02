/// @desc: Developer

if(global.dev) {
	if(global.dev_grid != NULL) {
		draw_set_alpha(0.3);
		mp_grid_draw(global.dev_grid);
		draw_set_alpha(1);
	}
}