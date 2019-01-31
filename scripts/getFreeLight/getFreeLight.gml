var _free_lights_length = ds_list_size(free_lights);

if (_free_lights_length < 1) return -1;

var _i = irandom(_free_lights_length-1);
var _used = free_lights[| _i];
ds_queue_enqueue(used_lights, _used);
ds_list_delete(free_lights, _i);

return _used;