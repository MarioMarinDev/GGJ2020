/// scr_game01_control

switch(global.game_state) {
	case game_states.unready:
		global.game_state = game_states.ready;
	break;
	
	case game_states.ready:
		if(!instance_exists(obj_transition)) {
			scr_game_time_pass();
		}
		
		if(global.game_hours >= 19) {
			rm_goto(room);	
		}
	break;
}