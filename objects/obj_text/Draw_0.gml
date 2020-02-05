/// @desc: Render Text

draw_set_halign(halign);
draw_set_valign(valign);
draw_set_color(color);
draw_set_font(font);

var xx, yy;
switch(halign) {
	case fa_left:
		xx = bbox_left;
	break;
	case fa_center:
		xx = object_center_x();
	break;
	case fa_right:
		xx = bbox_right;
	break;
}
switch(valign) {
	case fa_top:
		yy = bbox_top;
	break;
	case fa_middle:
		yy = object_center_y();
	break;
	case fa_bottom:
		yy = bbox_bottom;
	break;
}

draw_text(xx, yy, text);

if(global.dev) {
	draw_self();
}