if (timer_running) {
	time = floor((current_time - ref_time + time_buffer) / 1000);
	var formatted_time = formatTime(time);
	time_string = formatted_time[0] + ":" + formatted_time[1] + ":" + formatted_time[2];
}