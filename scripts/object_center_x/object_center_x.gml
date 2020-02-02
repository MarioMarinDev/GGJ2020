/// object_center_x
/// @arg [optional]object

if(argument_count == 1) {
	var obj = argument[0];
	if(instance_exists(obj)) {
		return obj.bbox_left + ((obj.bbox_right - obj.bbox_left) / 2);
	}
}

return bbox_left + ((bbox_right - bbox_left) / 2);