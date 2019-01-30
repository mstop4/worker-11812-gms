/// @arg str
/// @arg length
/// @arg char

var _str = argument[0];
var _length = argument[1];
var _char = argument[2];

var _cur_len = string_length(_str);

while (_cur_len < _length) {
	_str = _char + _str;
	_cur_len = string_length(_str);
}

return _str;