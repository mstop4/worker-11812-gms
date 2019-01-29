/// @arg seconds

var _seconds = argument[0];

var _hrs =  floor(_seconds / 3600);
var _mins = floor(_seconds / 60) mod 60;
var _secs = floor(_seconds mod 60);

_mins = _mins < 10 ? string_format(_mins, 2, 0) : string(_mins);
_secs = _secs < 10 ? string_format(_secs, 2, 0) : string(_secs);

return [string(_hrs), _mins, _secs];