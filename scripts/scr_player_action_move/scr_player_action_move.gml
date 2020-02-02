/// scr_player_action_move

// Get user input
move_left = keyboard_check(key_left);
move_right = keyboard_check(key_right);
move_up = keyboard_check(key_up);
move_down = keyboard_check(key_down);

// Calculate speeds
xaxis = move_right - move_left;
yaxis = move_down - move_up;

dir = point_direction(0, 0, xaxis, yaxis);
len = (xaxis != 0 || yaxis != 0) ? spd : 0;

hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Collision check
scr_player_movement_collision(obj_block, obj_npc);

// Apply movement
x += hspd;
y += vspd;