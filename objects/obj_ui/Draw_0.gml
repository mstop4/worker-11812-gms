draw_set_colour(obj_gameConfig.lightTheme[? "textColour"]);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_Fondamento24);

draw_text(12, 12, "Score");
draw_set_valign(fa_bottom);
draw_text(12, obj_gameConfig.appHeight-10, "Time");

draw_set_font(fnt_metropolis);
draw_set_valign(fa_top);
draw_text(8, 34, string(score));

draw_set_valign(fa_bottom);
draw_text(8, obj_gameConfig.appHeight-36, time_string);