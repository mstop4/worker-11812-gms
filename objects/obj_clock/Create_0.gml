lights = [];
free_lights = ds_list_create();
used_lights = ds_queue_create();
ds_queue_enqueue(used_lights, -1);

for (var i=0; i<num_lights; i++) {
	var _angle = 90-i*360/num_lights;
	var _offset_x = dcos(_angle) * light_radius;
	var _offset_y = -dsin(_angle) * light_radius;
	
	lights[i] = instance_create_layer(x + _offset_x, y + _offset_y, layer, obj_light);
	lights[i].image_angle = _angle - 90;
	lights[i].angle = _angle;
	ds_list_add(free_lights, lights[i]);
}

hands = [];
hand_taken = noone;

for (var i=0; i<num_hands; i++) {
	if (i == 2)
		hands[i] = instance_create_layer(x, y, "Clock_Front", obj_hand);
	else
		hands[i] = instance_create_layer(x, y, layer, obj_hand);
}

hands[0].image_angle = 0;
hands[1].image_angle = 180;
hands[2].image_angle = 270;

for (var i=0; i<16; i++) {
	is_special[i] = false;
}

points_to_level_up = obj_gameConfig.points_to_level_up[level];
turns_until_sp = obj_gameConfig.sp_bulb_delay_turns[level];