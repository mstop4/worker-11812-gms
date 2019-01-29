/// @arg index

var _index = argument[0];

with (obj_bulbEffect) {
	part_particles_create(ps, emitter_stay_x[_index], emitter_stay_y[_index], part_glow_stay, 1);
	alarm[_index] = emitter_stay_delay;
}