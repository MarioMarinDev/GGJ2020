/// @desc: Computer Control

// Calculate limits
limit_x1 = view_x + x_add;
limit_y1 = view_y + y_add;
limit_x2 = view_x + width - x_add;
limit_y2 = view_y + height - y_add;

if(active) {
	// Check if fixed
	var any_virus = false;
	var w_cells = array_height_2d(grid);
	for(var i = 0; i < w_cells; i++) {
		var h_cells = array_length_2d(grid, i);
		for(var j = 0; j < h_cells; j++) {
			var icon = grid[i, j];
			if(instance_exists(icon)) {
				if(icon.type == icon_types.virus) {
					any_virus = true;				
				}
			}
		}
	}
	if(!any_virus && instance_exists(owner)) {
		audio_play_sound(snd_fixed, 5, false);
		with(owner) scr_npc_fix();
		instance_destroy();
	}	

	// Close computer
	var close = false;
	if(keyboard_check_pressed(vk_escape)) {
		close = true;
	}
	if(mouse_check_button_pressed(mb_left) && !collision_point(mouse_x, mouse_y, id, false, false)) {
		close = true;
	}
	if(close) {
		active = false;
		audio_play_sound(snd_computer_off, 5, false);
	}
}