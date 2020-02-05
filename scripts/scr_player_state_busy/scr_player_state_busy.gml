/// scr_player_state_busy

var any_activity = false;

// Computer activity
var computers = instance_number(obj_computer_screen);
for(var i = 0; i < computers; i++) {
	var computer = instance_find(obj_computer_screen, i);
	if(computer.active) {
		any_activity = true;
	}
}

// Check if still busy
if(!any_activity) {
	state = scr_player_state_normal;
}