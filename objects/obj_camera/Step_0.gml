/// @desc: Camera Control

if(instance_exists(owner)) {
	if(owner.state != scr_player_state_busy) {
		x += (owner.x - x) * distance;
		y += (owner.y - y) * distance;
	}
}