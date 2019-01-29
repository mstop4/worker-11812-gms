/// @arg index

var _index = argument[0];

with (obj_bulbEffect) {
	if (_index >= 0 && _index < max_emitters) {
		alarm[_index] = -1;
		emitter_stay_on[_index] = false;
		return -1;
	}

	return _index;
}