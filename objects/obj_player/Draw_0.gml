/// @desc: Render Player

draw_self();

// Draw ballons
if(instance_exists(interactable)) {
	var spr = spr_ballon_exclamation;
	var xx = x;
	var yy = bbox_top - sprite_get_height(spr) * image_yscale;
	draw_sprite_ext(spr, 0, xx, yy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

// Developer render
if(global.dev) {
	// Draw interact area
	draw_set_color(c_teal);
	draw_set_alpha(0.3);
	var xc = object_center_x();
	var yc = object_center_y();
	draw_circle(xc, yc, interact_radius, false);
	draw_set_alpha(1);
	
	// Draw bbox
	if(id == global.dev_instance) {
		draw_set_color(c_lime);
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true)
	}
}