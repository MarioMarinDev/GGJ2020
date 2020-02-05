/// scr_player_action_interact

// Interact
if(instance_exists(interactable) && keyboard_check_pressed(key_interact)) {
	switch(interactable.object_index) {
		case obj_npc:
			scr_npc_show_computer(interactable);
			state = scr_player_state_busy;
		break;
	}
}

// Check for interactables
// Interact with NPCs
var npcs = instance_number(obj_npc);
var any_interactable = false;
for(var i = 0; i < npcs; i++) {
	var npc = instance_find(obj_npc, i);
	var xc = object_center_x();
	var yc = object_center_y();
	if(npc.activity == scr_npc_action_ask_for_help && collision_circle(xc, yc, interact_radius, npc, true, true)) {
		any_interactable = true;
		interactable = npc;
	}
}

if(!any_interactable) {
	interactable = noone;
}