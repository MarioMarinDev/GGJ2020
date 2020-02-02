/// scr_npc_animation

if(path_exists(path_index)) {
	image_speed = 0.5;
} else {
	image_index = 0;
	image_speed = 0;
}

if(activity == scr_npc_action_leave) {
	var red = merge_color(c_white, c_red, 0.5);
	image_blend = red;
}