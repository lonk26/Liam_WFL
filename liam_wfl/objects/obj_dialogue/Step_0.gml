/// Write out the text


/// All credit to https://hotpot.ai/art-generator for AI generated art for custscenes

if _writing {
	if !(_text_index % 1 == 0) {
		_text_index += _typing_speed
		exit
	}
	if _text_index <= string_length(_text_l[text_id]) {
		var _current_char = string_char_at(_text_l[text_id], _text_index)
		
		var wrap = string_width(_text_displayed[| _line_index] + _current_char) > _line_width && _current_char == " "
		
		if wrap {
			_line_index += 1
			ds_list_add(_text_displayed, "")
		} else {
			_text_displayed[| _line_index] += _current_char	
		}
		_text_index += _typing_speed
	} else {
		_writing = false	
	}
	
} else {
	
}

if keyboard_check_pressed(vk_space) and _writing == false and text_id == max_text_id and room != Room_end {
	room_goto_next()	
} else if keyboard_check_pressed(vk_space) and _writing == false {
	text_id += 1	
	_line_index = 0
	_text_index = 1
	_writing = true
	ds_list_clear(_text_displayed)
	_text_displayed = ds_list_create()
	ds_list_add(_text_displayed, "")
}

if keyboard_check_pressed(vk_insert) and room != Room_end {
	room_goto_next()
}