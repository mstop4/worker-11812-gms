draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_colour(obj_gameConfig.lightTheme[? "textColour"]);

draw_set_font(fnt_Fondamento64);
draw_text(obj_gameConfig.appCenterX, 64, "How to Operate");

draw_set_halign(fa_left);
draw_set_font(fnt_Fondamento36);
draw_text(16, 240, "1. Move the hands of the\ndial over active lights to\nturn them off.");
draw_text(obj_gameConfig.appCenterX + 8, 240, "2. Don't let the lights flash,\nthat will allow pressure\nto build up.");
draw_text(16, obj_gameConfig.appCenterY + 124, "3. Don't let the pressure\nmeter go critical, or the\nconsequences will be dire.");
draw_text(obj_gameConfig.appCenterX + 8, obj_gameConfig.appCenterY + 124, "4. Turning off special blue\nlights will relieve some\nof the pressure.");

draw_sprite(spr_figure1, 0, obj_gameConfig.appCenterX - 108, 240);
draw_sprite(fig2_spr, image_index, obj_gameConfig.appWidth - 16, 240);
draw_sprite(spr_figure5, image_index, obj_gameConfig.appCenterX - 108, obj_gameConfig.appCenterY + 124);
draw_sprite(spr_figure3, image_index, obj_gameConfig.appWidth - 16, obj_gameConfig.appCenterY + 124);