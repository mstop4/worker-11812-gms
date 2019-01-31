with (obj_main) {
	scene_over = true;
	alarm[1] = obj_gameConfig.game_over_time;
}

with (obj_transition) {
	current_alpha = 0;
	target_alpha = 1;
	colour = c_white;
	alpha_delta = 1/(obj_gameConfig.game_over_time - 60);
}

obj_ui.timer_running = false;
audio_sound_gain(bgm, 0, obj_gameConfig.game_over_time * 100/6);