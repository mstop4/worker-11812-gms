draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_colour(obj_gameConfig.darkTheme[? "textColour"]);

if (quote_index == 0)
	draw_set_font(fnt_Fondamento96);
else
	draw_set_font(fnt_Fondamento56);

draw_text(obj_gameConfig.appCenterX, obj_gameConfig.appHeight * 0.225, obj_gameConfig.end_quotes[quote_index]);

draw_set_font(fnt_Fondamento64);
draw_text(obj_gameConfig.appWidth * 0.25, obj_gameConfig.appHeight * 0.525, "Score: " + string(score));
draw_text(obj_gameConfig.appWidth * 0.75, obj_gameConfig.appHeight * 0.525, "Time: " + time_string);