/// scr_input

// Developer input
if(keyboard_check_pressed(dev_key)) {
	global.dev = !global.dev;
}
if(global.dev) {
	if(keyboard_check_pressed(dev_end)) {
		game_end();
	}
	if(keyboard_check_pressed(dev_restart)) {
		game_restart();
	}
	if(keyboard_check_pressed(dev_reset_variables)) {
		global.dev_grid = NULL;
		global.dev_instance = noone;
	}
}
