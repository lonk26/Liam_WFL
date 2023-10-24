/// Write out the text

if _writing {
	if !(_text_index % 1 == 0) {
		_text_index += _typing_speed
		exit
	}
	if _text_index <= string_length(_text) {
		var _current_char = string_char_at(_text, _text_index)
		
		var wrap = string_width(_text_displayed[| _line_index] + _current_char) > _line_width && _current_char == " "
		
		if wrap {
			_line_index += 1
			ds_list_add(_text_displayed, "")
		} else {
			_text_displayed[| _line_index] += _current_char	
		}
		_text_index += _typing_speed
	}
	
} else {
	_writing = false
}

if keyboard_check_pressed(vk_space) and _writing == false {
	room_goto_next()	
}