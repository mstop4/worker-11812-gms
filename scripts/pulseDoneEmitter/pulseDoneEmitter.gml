/// @arg x
/// @arg y

var _x = argument[0];
var _y = argument[1];

with (obj_bulbEffect) {
	part_particles_create(ps, _x, _y, part_glow_done, 1);
}