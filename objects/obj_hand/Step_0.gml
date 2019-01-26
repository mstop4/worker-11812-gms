if (touch_index != -1 && device_mouse_check_button(touch_index, mb_left)) {
	image_angle = point_direction(obj_clock.x, obj_clock.y, device_mouse_x(touch_index), device_mouse_y(touch_index));
}