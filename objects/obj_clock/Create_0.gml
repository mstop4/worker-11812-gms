lights = [];

for (var i=0; i<num_lights; i++) {
	var _angle = 90-i*360/num_lights;
	var _offset_x = dcos(_angle) * light_radius;
	var _offset_y = -dsin(_angle) * light_radius;
	
	lights[i] = instance_create_layer(x + _offset_x, y + _offset_y, layer, obj_light);
	lights[i].image_angle = _angle - 90;
}