/// scr_npc_action_return_to_workplace

if(path_exists(path_index)) {
	if(path_position >= 0.9) {
		state = scr_npc_state_thinking;		
	}
} else {
	var xx = workplace.x;
	var yy = workplace.y;
	if(!scr_npc_move_to_point(xx, yy)) {
		state = scr_npc_state_thinking;
	}
}
