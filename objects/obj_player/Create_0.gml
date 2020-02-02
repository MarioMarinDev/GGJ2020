/// @desc: Player Variables

// Properties variables
state = scr_player_state_normal;
spd = 4;

// Movement variables
key_left = ord("A");
key_right = ord("D");
key_up = ord("W");
key_down = ord("S");

// Sprite variables
sprite_font = spr_test_player_font;
sprite_back = spr_test_player_back;

// Camera variables
camera = instance_create_depth(x, y, depth, obj_camera);
camera.owner = id;
