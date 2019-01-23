draw_set_halign(h_align);
draw_set_valign(v_align);
draw_set_font(my_font);

if (is_hover)
	draw_set_colour(my_theme[? "hoverColour"]);
else
	draw_set_colour(my_theme[? "linkColour"]);
	
draw_text(x, y, my_label);