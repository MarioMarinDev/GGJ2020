/// scr_npc_action_leave

if(instance_exists(obj_spawn_exit)) {
	if(!path_exists(path_index)) {
		var obj = obj_spawn_exit;
		var xx = random_range(obj.bbox_left, obj.bbox_right);
		var yy = obj.y;
		if(scr_npc_move_to_point(xx, yy)) {
			audio_play_sound(snd_angry, 5, false);
		}
	}
	if(object_collision(obj_spawn_exit)) {
		state = scr_npc_state_destroy;
	}
}


