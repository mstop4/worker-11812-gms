var _diff = actual_progress - progress;
progress = abs(_diff) < 1 ? actual_progress : progress + _diff / 8;

if (progress >= max_progress && !obj_main.scene_over) {
    setGameOver();
    setSteamIntensity(1, true);
	screenShake(4);
}

else {
    var _ratio = min(progress / (zero_point - hundred_point), 1);

    if (_ratio >= 1.0 && !is_flashing) {
	    image_speed = 1;
	    is_flashing = true;
    }

    else if (_ratio < 1.0 && is_flashing) {
	    image_speed = 0;
		image_index = 0;
	    is_flashing = false;
    }

    if (_ratio >= 0.5) {
	    if (!obj_steam.is_steaming) {
			startSteam();
		}
		setSteamIntensity((_ratio - 0.5) * 2, false);
    }

    else if (_ratio < 0.5) {
	    if (obj_steam.is_steaming) {
	        stopSteam();
	    }
    }
}