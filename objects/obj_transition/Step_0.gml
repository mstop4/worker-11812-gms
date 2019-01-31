if (alpha_delta != 0) {
	if ((alpha_delta > 0 && target_alpha - current_alpha < alpha_delta) ||
		(alpha_delta < 0 && target_alpha - current_alpha > alpha_delta)) {
		current_alpha = target_alpha;
	}
	
	else
		current_alpha += alpha_delta;

	if (current_alpha == target_alpha)
		alpha_delta = 0;
}

if (screen_shake_intensity != 0) {
	cam_x = random_range(-screen_shake_intensity, screen_shake_intensity);
	cam_y = random_range(-screen_shake_intensity, screen_shake_intensity);
	
	camera_set_view_pos(view_camera[view_current], cam_x, cam_y);
}