/// scr_win_control

switch(global.game_state) {
	case game_states.unready:
		btn_menu = object_find_tag("btn_menu", obj_button);
		
		if(instance_exists(btn_menu)) {
			global.game_state = game_states.ready;
		}
	break;
	
	case game_states.ready:
		if(btn_menu.pressed) {
			game_restart();
		}
	break;
}