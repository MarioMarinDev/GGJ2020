/// @desc: Player Variables

// Properties variables
state = scr_player_state_normal;
spd = 4;

// Movement variables
key_left = ord("A");
key_right = ord("D");
key_up = ord("W");
key_down = ord("S");

// Interaction variables
interactable = noone;
key_interact = ord("E");
interact_radius = bbox_right - bbox_left + 2;

// Sprite variables
sprite_font = spr_test_player_font;
sprite_back = spr_test_player_back;

// Camera variables
camera = instance_create_depth(x, y, depth, obj_camera);
camera.owner = id;
