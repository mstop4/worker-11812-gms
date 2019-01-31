with (obj_steam) {
	part_emitter_stream(ps, emitterL, part_cloudL, 0);
	part_emitter_stream(ps, emitterR, part_cloudR, 0);
	layer_background_visible(fog_layer, false);
	if (numbers_layer != -1) {
		layer_background_visible(numbers_layer, false);
	}
	is_steaming = false;
}