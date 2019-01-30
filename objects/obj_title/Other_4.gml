with (obj_transition) {
	current_alpha = 1;
	target_alpha = 0;
	colour = c_black;
	alpha_delta = -1/120;
}

alarm[0] = 120;

if (bgm == noone) {
	bgm = audio_play_sound(mus_bgm2, 100, true);
}