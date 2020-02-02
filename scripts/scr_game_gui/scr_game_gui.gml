/// scr_game_gui

draw_set_color(c_white);
draw_set_font(fnt_gui);

var gui_y_max = string_height(" ") + 10;
var section_space = string_width(" ") * 5;
var xx, yy = 5;

draw_rectangle_dim(0, 0, gui_x_max, gui_y_max, c_black, 0.8);

// Draw date and time
var date = "Monday  ";
date += scr_game_time_string();
xx = section_space;
draw_text(xx, yy, date);

// Draw money
draw_set_color(c_green);
var money = "$";
money += string(500);
xx += string_width(date) + section_space;
draw_text(xx, yy, money);

// Calculate X max
gui_x_max = xx + string_width(money) + section_space;


