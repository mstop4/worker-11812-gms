with (obj_transition) {
	current_alpha = 1;
	target_alpha = 0;
	colour = c_white;
	alpha_delta = -1/120;
}

screenShake(0);
bgm = noone;
quote_index = irandom(obj_gameConfig.num_quotes-1);
alarm[0] = 120;