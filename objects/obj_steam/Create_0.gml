ps = part_system_create();

part_cloudL = part_type_create();
part_type_sprite(part_cloudL, spr_cloud, false, false, false);
part_type_speed(part_cloudL, 6.5, 6.5, 0, 0);
part_type_life(part_cloudL, 90, 120);
part_type_size(part_cloudL, 0.5, 0.5, 0.5/120, 0);
part_type_orientation(part_cloudL, 0, 360, 0, 0, false);
part_type_direction(part_cloudL, -90, 90, 0, 0);
part_type_alpha2(part_cloudL, 0.375, 0);

part_cloudR = part_type_create();
part_type_sprite(part_cloudR, spr_cloud, false, false, false);
part_type_speed(part_cloudR, 6.5, 6.5, 0, 0);
part_type_life(part_cloudR, 90, 120);
part_type_size(part_cloudR, 0.5, 0.5, 0.5/120, 0);
part_type_orientation(part_cloudR, 0, 360, 0, 0, false);
part_type_direction(part_cloudR, 90, 270, 0, 0);
part_type_alpha2(part_cloudR, 0.375, 0);

var _layer = layer_get_id("Fog");
fog_layer = layer_background_get_id(_layer);

_layer = layer_get_id("Clock_Numbers");
if (layer_exists(_layer))
	numbers_layer = layer_background_get_id(_layer);
else
	numbers_layer = -1;

emitterL = part_emitter_create(ps);
part_emitter_region(ps, emitterL, 
					0, 0, obj_gameConfig.appCenterY, obj_gameConfig.appCenterY,
					ps_shape_line, ps_distr_linear);
					
emitterR = part_emitter_create(ps);
part_emitter_region(ps, emitterR, 
					obj_gameConfig.appWidth, obj_gameConfig.appWidth, obj_gameConfig.appCenterY, obj_gameConfig.appCenterY,
					ps_shape_line, ps_distr_linear);
				
emitter_rate = 0;
intensity_throttled = false;
is_steaming = true;
setSteamIntensity(0.5, true);