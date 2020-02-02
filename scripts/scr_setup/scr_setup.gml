/// scr_setup

// Load databases
scr_db_rooms();

// Global variables
global.game_state = game_states.unready;
global.game_score = 0;
global.game_hours = 9;
global.game_minutes = 0;
global.game_day_length = room_speed * 300; // room_speed * 300; // 5 Minutes
global.game_minute_length = global.game_day_length / 420;

// Instance variables
room_controller = noone;
room_searched = false;
gui_x_max = 0;

// Developer variables
global.dev = false;
dev_key = vk_f1;
dev_end = vk_escape;
dev_restart = vk_home;
dev_y_max = 0;
