with (obj_transition) {
	current_alpha = 0;
	target_alpha = 1;
	colour = c_black;
	alpha_delta = 1/90;
}

obj_gameover.alarm[1] = 90;

with (obj_button) {
	can_click = false;
}