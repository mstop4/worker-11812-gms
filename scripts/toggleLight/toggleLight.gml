/// @arg state

var _state = argument[0];

if (_state >= lightState.off && _state <= lightState.flashSp) {
	state = _state;
	
	switch (_state) {
		case lightState.off: 
			sprite_index = spr_light;
			image_index = 0;
			image_speed = 0;
			alarm[0] = -1;
			shutoff_timer = -1;
			break;
			
		case lightState.on: 
			sprite_index = spr_light;
			image_index = 1;
			image_speed = 0;
			alarm[0] = obj_gameConfig.bulb_critical_time;
			shutoff_timer = obj_gameConfig.bulb_deactivate_time;
			break;
			
		case lightState.flash: 
			sprite_index = spr_light;
			image_index = 1;
			image_speed = 1;
			break;
			
		case lightState.onSp: 
			sprite_index = spr_spLight;
			image_index = 1;
			image_speed = 0;
			alarm[0] = obj_gameConfig.bulb_critical_time;
			shutoff_timer = obj_gameConfig.bulb_deactivate_time;
			break;
			
		case lightState.flashSp: 
			sprite_index = spr_spLight;
			image_index = 1;
			image_speed = 1;
			break;
	}
}