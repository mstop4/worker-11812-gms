draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_colour(obj_gameConfig.darkTheme[? "textColour"]);

draw_set_font(fnt_Fondamento128);
draw_text(obj_gameConfig.appCenterX, obj_gameConfig.appHeight * 0.225, "The End");

draw_set_font(fnt_Fondamento64);
draw_text(obj_gameConfig.appWidth * 0.25, obj_gameConfig.appHeight * 0.525, "Score: " + string(score));
draw_text(obj_gameConfig.appWidth * 0.75, obj_gameConfig.appHeight * 0.525, "Score: " + time_string);