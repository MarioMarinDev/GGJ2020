/// @desc Game GUI

if(global.dev) {
	depth = dev_depth;
	scr_dev_info();
} else {
	depth = depth_o;
	if(global.game_playing) {
		scr_game_gui();
	}
}
