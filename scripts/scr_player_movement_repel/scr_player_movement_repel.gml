/// scr_player_repel

var xc = bbox_left + ((bbox_right - bbox_left) / 2);
var yc = bbox_top + ((bbox_bottom - bbox_top) / 2);
var o_xc = other.bbox_left + ((other.bbox_right - other.bbox_left) / 2);
var o_yc = other.bbox_top + ((other.bbox_bottom - other.bbox_top) / 2);
// var dir = point_direction(other.bbox_left, other.bbox_top, bbox_left, bbox_top);
var dir = point_direction(o_xc, o_yc, xc, yc);
var len = spd;

var hspd = lengthdir_x(len, dir);
var vspd = lengthdir_y(len, dir);

x += hspd;
y += vspd;
