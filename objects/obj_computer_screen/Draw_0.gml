/// @desc: Render Computer Screen

//Get view from camera
var cam = view_get_camera(0);
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

view_x = cam_x + xo;
view_y = cam_y + yo;

if(active) {
	x = limit_x1;
	y = limit_y1;
	draw_sprite(sprite_index, image_index, view_x, view_y);
	
	if(global.dev) {
		draw_set_color(c_lime);
		draw_rectangle(limit_x1, limit_y1, limit_x2, limit_y2, true);
	}
}
