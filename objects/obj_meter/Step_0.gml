var _diff = actual_progress - progress;

progress = abs(_diff) < 1 ? actual_progress : progress + _diff / 8;