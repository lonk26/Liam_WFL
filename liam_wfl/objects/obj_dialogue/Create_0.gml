// Define the dialog

switch room {
	case Room_start:
	_text = "Much longer piece of text to test the drawing function - Press Space to go to the next level"
	break
	
	case Room_end:
	_text = "This is the end room"
	break
	default:
	
	break
}

_text_index = 1
_typing_speed = 0.25
_line_width = 1600
_line_index = 0

_text_x = 75
_text_y = 800

_text_displayed = ds_list_create()
ds_list_add(_text_displayed, "")
