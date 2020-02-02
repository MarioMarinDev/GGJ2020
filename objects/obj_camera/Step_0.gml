/// @desc: Camera Control

if(instance_exists(owner)) {
	x += (owner.x - x) * distance;
	y += (owner.y - y) * distance;
}