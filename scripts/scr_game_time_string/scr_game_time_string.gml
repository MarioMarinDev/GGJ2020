/// scr_game_time_string

var hrs = global.game_hours;
var mins = global.game_minutes;

// Get time type
var type = "am";
if(hrs >= 12) {
	type = "pm";
}

// Get hours
var hrs_string = string(hrs);
if(hrs > 12) {
	hrs_string = string(hrs - 12);
}
if(int64(hrs_string) < 10) {
	hrs_string = "0" + hrs_string;
}

// Get minutes
var mins_string = string(mins);
if(mins < 10) {
	mins_string = "0" + string(mins);
}

return hrs_string + ":" + mins_string + " " + type;