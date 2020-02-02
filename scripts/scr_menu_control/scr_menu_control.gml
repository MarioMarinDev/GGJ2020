/// scr_menu_control

switch(global.game_state) {
	case game_states.unready:
		global.game_state = game_states.ready;
	break;
}