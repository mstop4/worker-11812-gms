draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_colour(obj_gameConfig.lightTheme[? "textColour"]);

draw_set_font(fnt_Fondamento128);
draw_text(obj_gameConfig.appCenter[? "x"], obj_gameConfig.appHeight * 0.25, "Worker #11812");

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

draw_set_font(fnt_Fondamento24);
draw_text(obj_gameConfig.appWidth, obj_gameConfig.appHeight, "v." + GM_version);