var _free = ds_queue_dequeue(used_lights);

if (_free != -1) {
	ds_list_add(free_lights, _free);
}