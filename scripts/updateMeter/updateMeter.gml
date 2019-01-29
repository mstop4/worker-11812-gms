/// @arg delta

var _delta = argument[0];

obj_meter.actual_progress = clamp(obj_meter.actual_progress  + _delta, 0, obj_meter.max_progress);