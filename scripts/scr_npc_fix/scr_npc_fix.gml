/// scr_npc_fix

// Gain money
scr_game_money_add(computer.gain_amount);

// Pacify npc
state = scr_npc_state_thinking;
activity = NULL;
alarm[1] = NULL;