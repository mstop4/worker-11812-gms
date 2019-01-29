ps = part_system_create();

part_glow_stay = part_type_create();
part_type_alpha2(part_glow_stay, 1, 0);
part_type_life(part_glow_stay, 30, 30);
part_type_size(part_glow_stay, 0, 0, 0.5/30, 0);
part_type_sprite(part_glow_stay, spr_glow, false, false, false);

part_glow_done = part_type_create();
part_type_alpha2(part_glow_done, 1, 0);
part_type_life(part_glow_done, 30, 30);
part_type_size(part_glow_done, 0, 0, 1/30, 0);
part_type_sprite(part_glow_done, spr_glow, false, false, false);

for (var i=0; i<max_emitters; i++) {
	emitter_stay_on[i] = false;
	emitter_stay_x[i] = 0; 
	emitter_stay_y[i] = 0; 
}

emitter_stay_delay = 15;