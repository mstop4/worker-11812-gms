/// @arg x
/// @arg y

var _x = argument[0];
var _y = argument[1];

with (obj_bulbEffect) {
	for (var i=0; i<max_emitters; i++) {
		if (!emitter_stay_on[i]) {
			emitter_stay_on[i] = true;
			emitter_stay_x[i] = _x;
			emitter_stay_y[i] = _y;
			stayEmitterStep(i);
		
			return i;
		}
	}

	return -1;
}