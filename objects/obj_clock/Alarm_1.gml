var _light = getFreeLight();

if (is_special[1])
	toggleLight(_light, lightState.onSp);
else
	toggleLight(_light, lightState.on);
	
_light.timer_index = 1;