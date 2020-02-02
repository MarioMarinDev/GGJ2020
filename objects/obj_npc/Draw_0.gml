/// @desc: Render NPC

draw_self();

// Draw desperate timer bar
if(alarm[1] > 0) {
	var x1 = bbox_left - 5;
	var y1 = bbox_top - 10;
	var x2 = bbox_right + 5;
	var y2 = bbox_top - 5;
	var amount = alarm[1] * 100 / desperate_time;
	draw_healthbar(x1, y1, x2, y2, amount, c_dkgray, c_red, c_red, 0, true, true);
}

if(global.dev) {
	// Draw path
	draw_set_color(c_lime);
	draw_circle(x_to, y_to, 3, false);
	if(path_position < 0 || path_exists(path_index)) {
		draw_set_color(c_teal);
		draw_path(path, x_start, y_start, false);
	}
	// Draw bbox
	if(id == global.dev_instance) {
		draw_set_color(c_lime);
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
}