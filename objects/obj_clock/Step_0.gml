// Input
for (var i=0; i<2; i++) {
	if (!device_mouse_check_button(i, mb_left)) {
		var _touch_x = device_mouse_x(i);
		var _touch_y = device_mouse_y(i);
	
		var _hand = instance_position(_touch_x, _touch_y, obj_hand);

		if (_hand != noone) {
			_hand.image_index = 1;
			_hand.touch_index = i;
		}
	}
}

// Check hands
var _meter_delta = 0;

for (var i=0; i<num_lights; i++) {
	switch (lights[i].state) {
		case lightState.off:
			continue;		

		case lightState.flash:		
		case lightState.flashSp:
			_meter_delta = obj_gameConfig.flash_bulb_delta;
			break;
			
		default:
	}
	
	for (var j=0; j<num_hands; j++) {
		if (abs(angle_difference(hands[j].image_angle, lights[i].angle)) <= hand_pointing_threshold) {
			lights[i].shutoff_timer--;
			
			if (lights[i].shutoff_timer <= 0) {
				if (lights[i].state >= lightState.onSp) {
					// update_meter(obj_game_config.sp_bulb_delta);
				}
				
				with (lights[i]) {
					toggleLight(lightState.off);
				}
				
				restockFreeLight();
			
				//Score and level up
				//update_score(1);
				if (points_to_level_up != 999)
					points_to_level_up--;
			
				if (points_to_level_up <= 0) {
					level = level < obj_gameConfig.num_levels ? level + 1 : level;
					points_to_level_up = obj_gameConfig.points_to_level_up[level];
				
					var _new_num_bulbs_active = obj_gameConfig.num_bulbs_active[level] - obj_gameConfig.num_bulbs_active[level-1];
				
					for (var k=0; k<_new_num_bulbs_active; k++) {
						var _index_offset = obj_gameConfig.num_bulbs_active[level-1];
						var _delay_time = obj_gameConfig.bulb_delay_time[level];
						alarm[_index_offset + k] = _delay_time[0] + i*(0.25*room_speed) + random(_delay_time[1]);
					}
				}
			
				// Generate Special Bulb
			
				var _index = lights[i].timer_index;
			
				if (turns_until_sp <= 0) {
					turns_until_sp = obj_gameConfig.sp_bulb_delay_turns[level];
					is_special[_index] = true;
				}
			
				else {
					turns_until_sp--;
					is_special[_index] = false;
				}
			
				var _delay_time = obj_gameConfig.bulb_delay_time[level];
				alarm[_index] = _delay_time[0] + random(_delay_time[1]);
			
				break;
			}
		}
	}
}

// update_meter(_meter_delta);