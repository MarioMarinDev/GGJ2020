/// rm_goto
/// @args room

// Arguments
var rm = argument0;

// Make transition
if(!instance_exists(obj_transition)) {
	var transition = instance_create_depth(x, y, depth - 100, obj_transition);
	transition.next_room = rm;
}