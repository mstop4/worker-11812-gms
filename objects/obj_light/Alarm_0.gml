/// @description critical timer

if (state == lightState.on) {
	toggleLight(lightState.flash);
}

else if (state == lightState.onSp) {
	toggleLight(lightState.flashSp);
}