/// @arg intensity
/// @arg force

var _intensity = argument[0];
var _force = argument[1];

with (obj_steam) {
	if (!intensity_throttled || _force) {
		emitter_rate = lerp(emitter_rate_min, emitter_rate_max, _intensity);
		intensity_throttled = true;
		alarm[0] = throttle_interval;

		part_emitter_stream(ps, emitterL, part_cloudL, emitter_rate);
		part_emitter_stream(ps, emitterR, part_cloudR, emitter_rate);
		layer_background_alpha(fog_layer, _intensity);
		if (numbers_layer != -1) {
			layer_background_alpha(numbers_layer, _intensity);
		}
	}
}