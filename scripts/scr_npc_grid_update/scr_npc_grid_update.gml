/// scr_npc_grid_update

mp_grid_destroy(grid);

var cell_width = 32;
var cell_height = 32;

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

// Add obstacles
mp_grid_add_instances(grid, obj_block, false);
mp_grid_add_instances(grid, obj_player, false);
var npcs = instance_number(obj_npc);
for(var i = 0; i < npcs; i++) {
	var npc = instance_find(obj_npc, i);
	if(npc != id) {
		mp_grid_add_instances(grid, npc, false);
	}
}

return grid;
