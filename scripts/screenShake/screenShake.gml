/// @arg intensity

with (obj_transition) {
	screen_shake_intensity = argument[0];

	if (argument[0] == 0) {
		cam_x = 0;
		cam_y = 0;
		camera_set_view_pos(view_camera[view_current], 0, 0);
	}
}