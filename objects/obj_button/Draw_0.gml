draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(my_font);

if (is_hover)
	draw_set_colour(my_theme[? "hoverColour"]);
else
	draw_set_colour(my_theme[? "linkColour"]);
	
draw_text(x, y, my_label);