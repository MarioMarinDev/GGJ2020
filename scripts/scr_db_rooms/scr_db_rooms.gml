/// scr_db_rooms

rooms = ds_list_create();

scr_db_rooms_add("Setup", rm_setup, scr_setup_control);
scr_db_rooms_add("Menu", rm_menu, scr_menu_control);
scr_db_rooms_add("Level 1", rm_game01, scr_game01_control);
scr_db_rooms_add("Win", rm_win, scr_win_control);
scr_db_rooms_add("Lose", rm_lose, scr_lose_control);