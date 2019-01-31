with (obj_steam) {
	part_emitter_stream(ps, emitterL, part_cloudL, emitter_rate);
	part_emitter_stream(ps, emitterR, part_cloudR, emitter_rate);
	layer_background_visible(fog_layer, true);
	if (numbers_layer != -1) {
		layer_background_visible(numbers_layer, true);
	}
	is_steaming = true;
}