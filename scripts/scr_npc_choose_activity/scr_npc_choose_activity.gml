/// scr_npc_choose_activity

var new_activity = scr_npc_action_do_nothing;

switch(type) {
	case npc_types.employee:
		if(random_chance(10)) {
			new_activity = scr_npc_action_move_random;
		}	else {
			if(scr_npc_in_workplace()) {
				if(random_chance(5)) {
					new_activity = scr_npc_action_ask_for_help;
				}
			} else {
				if(random_chance(80)) {
					new_activity = scr_npc_action_return_to_workplace;	
				} else {
					new_activity = scr_npc_action_move_random;		
				}
			}
		}
	break;
	
	case npc_types.janitor:
		if(random_chance(50)) {
			new_activity = scr_npc_action_move_random;
		}
	break;
}

state = scr_npc_state_do_activity;
activity = new_activity;
