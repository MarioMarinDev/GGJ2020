/// object_center_x
/// @arg [optional]object

if(argument_count == 1) {
	var obj = argument[0];
	if(instance_exists(obj)) {
		return obj.bbox_top + ((obj.bbox_bottom - obj.bbox_top) / 2);
	}
}

return bbox_top + ((bbox_bottom - bbox_top) / 2);