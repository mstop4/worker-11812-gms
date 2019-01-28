var _free = ds_queue_dequeue(used_lights);

if (_free > -1) {
	ds_list_add(_free);
}