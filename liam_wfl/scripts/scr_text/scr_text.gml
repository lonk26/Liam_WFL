// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_text(){

}

// Credit to function to gamemaker.io, coffe-break-tutorial. Typewriter text tutorial

function string_wrap(_text, _width) {
	var _text_wrapped = ""
	var _space = -1
	var _char_pos = 1
	
	while (string_length(_text) >= _char_pos) {
		if (string_width(string_copy(_text, 1, _char_pos)) > _width) {
			if (_space != -1) {
				_text_wrapped += string_copy(_text, 1, _space) + "\n"
				_text = string_copy(_text, _space + 1, string_length(_text) - (_space))
				_char_pos = 1
				_space = -1
			}
		}
		
		if string_char_at(_text, _char_pos) == " " {
			_space = _char_pos	
		}
		_char_pos += 1
	}
	
	if string_length(_text) > 0 {
		_text_wrapped += _text	
	}
	
	return _text_wrapped
}