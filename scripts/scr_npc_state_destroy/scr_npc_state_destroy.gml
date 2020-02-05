/// scr_npc_state_destroy

if(image_alpha > 0) {
	image_alpha -= dim_spd;
} else {
	scr_game_money_remove(500);
	instance_destroy();
}