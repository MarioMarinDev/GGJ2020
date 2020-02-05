/// object_find_tag
/// @arg tag,object_type

// Arguments
var tag = argument0;
var obj = argument1;

// Find object with tag
if(!instance_exists(obj)) {
	return noone;
}
var objs = instance_number(obj);
for(var i = 0; i < objs; i++) {
	var o = instance_find(obj, i);
	if(o.tag == tag) {
		return o;
	}
}

return noone;