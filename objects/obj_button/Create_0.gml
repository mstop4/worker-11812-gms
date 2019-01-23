is_hover = false;

draw_set_font(my_font);
var _width = string_width(my_label);
var _height = string_height(my_label);

top = y - _height/2;
left = x - _width/2;
bottom = y + _height/2;
right = x + _width/2;