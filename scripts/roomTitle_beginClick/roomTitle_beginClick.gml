with (obj_transition) {
	current_alpha = 0;
	target_alpha = 1;
	colour = c_black;
	alpha_delta = 1/75;
}

obj_title.alarm[3] = 75;
audio_sound_gain(bgm, 0, 1250);

with (obj_button) {
	can_click = false;
}