/// @desc: Inspect NPC

if(global.dev) {
	grid = scr_npc_grid_update();
	if(id == global.dev_instance) {
		global.dev_grid = (global.dev_grid != grid) ? grid : NULL;
	}
	global.dev_instance = id;
}
