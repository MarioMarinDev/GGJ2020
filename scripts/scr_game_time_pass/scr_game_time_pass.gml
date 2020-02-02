/// scr_game_time_pass

if(alarm[0] <= 0) {
	alarm[0] = global.game_minute_length;
	var next_minute = global.game_minutes + 1;
	if(next_minute >= 60) {
		// Add hour
		global.game_minutes = 0;
		global.game_hours++;
	} else {
		// Add minute	
		global.game_minutes++;
	}
	

}