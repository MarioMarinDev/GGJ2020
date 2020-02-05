/// scr_action_ask_for_help

if(alarm[1] <= 0) {
	alarm[1] = desperate_time;
	
	// Create computer problem
	if(!instance_exists(computer)) {
		computer = instance_create_layer(x, y, "Interface", obj_computer_screen);
		computer.owner = id;
	}
	
}
