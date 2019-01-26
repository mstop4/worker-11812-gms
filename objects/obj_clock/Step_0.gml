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