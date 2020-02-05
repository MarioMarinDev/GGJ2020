/// @desc: Computer Variables

// Properties variables
owner = noone;
active = false;
gain_amount = 0;

// Elements variables
x_add = 22;
y_add = 22;
icon_size = 32;

// Area limits variables
view_x = 0;
view_y = 0;
limit_x1 = 0;
limit_y1 = 0;
limit_x2 = 0;
limit_y2 = 0;

// Render variables
width = sprite_get_width(sprite_index);
height = sprite_get_height(sprite_index);
xo = 128;
yo = 64;

// Initialization
scr_computer_icon_lists();
scr_computer_grid_create();
scr_computer_feed();