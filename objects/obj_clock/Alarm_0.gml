var _light = getFreeLight();

if (instance_exists(_light) && _light.object_index == obj_light) {
	if (is_special[0])
		with (_light) toggleLight(lightState.onSp);
	else
		with (_light) toggleLight(lightState.on);
	
	_light.timer_index = 0;
}