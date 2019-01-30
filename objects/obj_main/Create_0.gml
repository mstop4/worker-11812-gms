with (obj_transition) {
	current_alpha = 1;
	target_alpha = 0;
	colour = c_black;
	alpha_delta = -1/60;
}

alarm[0] = 60;
bgm = audio_play_sound(mus_bgm1, 100, true);
stopSteam();