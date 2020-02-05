/// @desc: Icon Control

// Check if active
active = false;
if(instance_exists(computer)) {
	if(computer.active) {
		active = true;
	}
}

if(active) {
	// Check for hover
	if(type != icon_types.trash && collision_point(mouse_x, mouse_y, id, false, false)) {
		hover = true;
	} else {
		hover = false;
	}

	// Check for dragging
	if(hover) {
		if(mouse_check_button(mb_left) && global.dragging == noone) {
			global.dragging = id;
			dragging = true;
			x_add = mouse_x - x;
			y_add = mouse_y - y;
		}
	}

	// Drag control
	if(!dragging) {
		x = xo;
		y = yo;
		depth = depth_o;
		if(id == global.dragging) {
			global.dragging = noone;
		}
	} else if(instance_exists(computer)) {
		var x1 = computer.limit_x1;
		var y1 = computer.limit_y1;
		var x2 = computer.limit_x2;
		var y2 = computer.limit_y2;
		if(mouse_x >= x1 && mouse_x <= x2 && mouse_y >= y1 && mouse_y <= y2) {
			x = mouse_x - x_add;
			y = mouse_y - y_add;
			depth = depth_o - 5;
		} else {
			dragging = false;
		}
		if(mouse_check_button_released(mb_left)) {
			dragging = false;
		}
	}
}