/// scr_npc_action_move_random

if(path_exists(path_index)) {
	if(path_position >= 0.9) {
		state = scr_npc_state_thinking;		
	}
} else {
	var new_pos_selected = false;
	var threshold = 160;
	while(!new_pos_selected) {
		var xx = random_range(x - threshold, x + threshold);
		var yy = random_range(y - threshold, y + threshold);
		new_pos_selected = scr_npc_move_to_point(xx, yy);
		threshold -= 10;
		if(threshold <= 0) {
			state = scr_npc_state_thinking;
			new_pos_selected = true;
		}
	}
}
