/// scr_computer_feed

// Create thrash icon
scr_computer_icon_add(spr_icon_trash, 0, 0);

// Select icon amount
var icons_max = 25;
var icons_min = 5;
var icons = irandom_range(icons_min, icons_max);
var good_icons_total = 11; // Modify if you add more icons
var good_icons = clamp(irandom_range(1, icons - 1), 1, good_icons_total);
var bad_icons = icons - good_icons;

// Select amount to win if fixed
gain_amount = bad_icons * 25;

// Create good icons
for(var i = 0; i < good_icons; i++) {
	var icon_created = false;
	while(!icon_created) {
		var cell_x = irandom_range(1, 9);
		var cell_y = irandom_range(0, 4);
		if(!scr_computer_icon_exists(cell_x, cell_y)) {
			icon_created = true;
			var icon_sprite = icons_good[| 0];
			scr_computer_icon_add(icon_sprite, cell_x, cell_y);
			ds_list_delete(icons_good, 0);
		}
	}
}

// Create bad icons
for(var i = 0; i < bad_icons; i++) {
	var icon_created = false;
	while(!icon_created) {
		var cell_x = irandom_range(1, 9);
		var cell_y = irandom_range(0, 4);
		if(!scr_computer_icon_exists(cell_x, cell_y)) {
			icon_created = true;
			var icon_index = irandom_range(0, ds_list_size(icons_bad) - 1);
			var icon_sprite = icons_bad[| icon_index];
			scr_computer_icon_add(icon_sprite, cell_x, cell_y);
		}
	}
}
