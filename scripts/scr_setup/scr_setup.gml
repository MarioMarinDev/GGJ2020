/// scr_setup

// Load databases
scr_db_rooms();

// Global variables
global.game_state = game_states.unready;
global.game_playing = false;
global.game_score = 0;
global.game_money = 0;
global.game_hours = 9;
global.game_minutes = 0;
global.game_work_minutes = 7 * 60;
global.game_day_length = room_speed * 100; 
global.game_minute_length = global.game_day_length / global.game_work_minutes;
global.dragging = noone;

// Instance variables
room_controller = noone;
room_searched = false;
gui_x_max = 0;
depth_o = depth;

// Developer variables
global.dev = false;
global.dev_instance = noone;
global.dev_grid = NULL;
dev_key = vk_f1;
dev_end = vk_escape;
dev_restart = vk_home;
dev_reset_variables = vk_backspace;
dev_y_max = 0;
dev_depth = -10000;
