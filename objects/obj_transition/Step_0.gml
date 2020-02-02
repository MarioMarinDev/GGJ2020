/// @desc: Transition Control

var dim_spd = 1 / delay;

switch(state) {
	case transition_states.fade_in:	
		if(alpha < 1) {
			alpha += dim_spd;
		} else {
			state = transition_states.transport;
		}
	break;
	case transition_states.transport:
		if(room_exists(next_room)) {
			room_goto(next_room);
		}
		scr_reset_globals();
		state = transition_states.fade_out;
	break;
	case transition_states.fade_out:
		if(alpha > 0 && global.game_state == game_states.ready) {
			alpha -= dim_spd;
		} else if(alpha <= 0) {
			state = transition_states.dispose;
		}
	break;
	case transition_states.dispose:
		instance_destroy();
	break;
}