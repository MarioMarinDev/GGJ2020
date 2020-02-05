/// @desc: Interaction

if(!dragging && other.type == icon_types.trash && type != icon_types.trash) {
	switch(type) {
		case icon_types.virus:
			audio_play_sound(snd_delete, 5, false);
		break;
		
		case icon_types.normal:
			var npc = computer.owner;
			if(instance_exists(npc)) {
				with(npc) {
					alarm[1] = NULL;
					state = scr_npc_state_do_activity;
					activity = scr_npc_action_leave;
				}
				instance_destroy(computer);
			}
		break;
	}
	instance_destroy();
}