/// @description (x, y, text, color, font, transparency, size)
// This function print a text inside room, it must containt 6 arguments

draw_set_color(argument3);
draw_set_font(argument4);
draw_set_alpha(argument5);
// argument6 = horizontal and vertical
// argument0 = x postion
// argument1 = y postion
// argument2 = text
// 0 = inclinacion del texto
draw_text_transformed(argument0, argument1, argument2, argument6, argument6, 0);
