/// @desc: Render Button

// Draw outline
if(outline) {
	var width = 4;
	draw_set_color(outline_color);
	draw_line_width(bbox_left, bbox_top, bbox_right, bbox_top, width)
	draw_line_width(bbox_right, bbox_top, bbox_right, bbox_bottom, width);
	draw_line_width(bbox_left, bbox_bottom, bbox_right, bbox_bottom, width);
	draw_line_width(bbox_left, bbox_top, bbox_left, bbox_bottom, width);
}

// Draw text
draw_set_color(text_color);
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var xc = object_center_x();
var yc = object_center_y();
draw_text(xc, yc, text);
