/// scr_player_movement_collision
/// @args object_1,object_2,...,object_n

var arguments = argument_count;
for(var i = 0; i < arguments; i++) {
	var obj = argument[i];
	if(object_exists(obj)) {
		if(place_meeting(x + hspd, y, obj)) {
			while(!place_meeting(x + sign(hspd), y, obj)) {
				x += sign(hspd);
			}
			hspd = 0;
		}
		if(place_meeting(x, y + vspd, obj)) {
		while(!place_meeting(x, y + sign(vspd), obj)) {
			y += sign(vspd);
		}
		vspd = 0;
		}
	}
}