if (async_load[? "event_type"] == "audio_system_status") {
	if (async_load[? "status"] == "available") {
		room_goto(room_title);
	}
}