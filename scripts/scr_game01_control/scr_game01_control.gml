/// scr_game01_control

switch(global.game_state) {
	case game_states.unready:
		// Create employees
		var spawns = instance_number(obj_spawn_npc);
		for(var i = 0; i < spawns; i++) {
			var spawn = instance_find(obj_spawn_npc, i);
			var spawn_width = spawn.bbox_right - spawn.bbox_left;
			var spawn_height = spawn.bbox_bottom - spawn.bbox_top;
			var xc = spawn.x + (spawn_width / 2);
			var yc = spawn.y + (spawn_height / 2);
			var npc = instance_create_depth(xc, yc, spawn.depth, obj_npc);
			npc.workplace = spawn;
		}
	
		global.game_state = game_states.ready;
	break;
	
	case game_states.ready:
		if(!instance_exists(obj_transition)) {
			scr_game_time_pass();
		}
		
		if(global.game_hours >= 19) {
			rm_goto(room);	
		}
	break;
}