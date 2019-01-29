var _light = getFreeLight();

if (is_special[1])
	with (_light) toggleLight(lightState.onSp);
else
	with (_light) toggleLight(lightState.on);
	
_light.timer_index = 1;