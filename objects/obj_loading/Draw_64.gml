if (os_browser != browser_not_a_browser) {
	draw_set_font(fnt_Fondamento96);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);

	draw_text(room_width / 2, room_height / 2, "Click to start");
}

else {
	draw_set_font(fnt_Fondamento64);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);

	draw_text(room_width / 2, room_height / 2, "You shouldn't see this.");
}