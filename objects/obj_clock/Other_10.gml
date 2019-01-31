for (var i=0; i<obj_gameConfig.num_bulbs_active[level]; i++) {
	var _delay_time = obj_gameConfig.bulb_delay_time[level];
	alarm[i] = _delay_time[0] + i*0.25*room_speed + random(_delay_time[1]);
}