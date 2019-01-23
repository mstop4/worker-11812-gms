draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_colour(obj_gameConfig.darkTheme[? "textColour"]);

draw_set_font(fnt_Fondamento56);
draw_text(obj_gameConfig.appCenter[? "x"], obj_gameConfig.appHeight * 0.075, "Programming & Art: M.S.T.O.P.");
draw_text(obj_gameConfig.appCenter[? "x"], obj_gameConfig.appHeight * 0.23, "Music:");

draw_set_font(fnt_Fondamento40);
draw_text(obj_gameConfig.appCenter[? "x"], obj_gameConfig.appHeight * 0.23 + 72, "\"Night in the City\"\n\"No End in Sight\"");

draw_set_font(fnt_Fondamento48);
draw_text(obj_gameConfig.appCenter[? "x"], obj_gameConfig.appHeight * 0.48, "by: Purple Planet Music");