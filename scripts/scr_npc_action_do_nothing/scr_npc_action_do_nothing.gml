/// scr_npc_action_do_nothig

if(alarm[2] <= 0) {
	alarm[2] = random_range(idle_min, idle_max);
}