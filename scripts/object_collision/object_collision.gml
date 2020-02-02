/// object_collision
/// @desc: Check if a collision is made
/// @arg object

// Arguments
var obj = argument0;

// Check collision
if(instance_exists(obj)) {
	if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj, false, true)) {
		return true;
	}
}

return false;