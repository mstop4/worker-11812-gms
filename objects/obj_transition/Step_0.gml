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