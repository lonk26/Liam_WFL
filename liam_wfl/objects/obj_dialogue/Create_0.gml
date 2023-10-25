// Define the dialog
text_id = 0
background_id = 0
switch room {
	
	case Room_start:
	_title = true
	_backgrounds = [spr_background_cutscene1, spr_background_cutscene2]
	_text_l = [2]
	_text_l[0] = "After spending a lifetime with Tim, his beloved owner, Liam watched helplessly as Tim was " +
			"conscripted into the army to defend their nation. Seasons came and went, yet Liam remained in " +
			"agonizing uncertainty, never hearing from Tim. Fueled by unwavering loyalty and courage, Liam " +
			"embarked on a quest to locate his dear owner, Tim, in hopes of reuniting with him once more. " +
			"Press space to proceed to next dialog. "
	_text_l[1] = "Overcome many levels with countless challenges, ranging from expansive, maze-like " +
				"jungles to treacherous, snow-covered landscapes teeming with perils, our loyal Liam has " +
				"finally arrived at the very battlefield where the long-awaited reunion with his master " +
				"is likely to occur. Press space to proceed to next dialog. "
	_text_l[2] = "Use the arrow keys to move, the space key to jump, the e key to interact (when prompted) " +
				"and the Q key to attack. There are also hidden cheat codes! - Press space to begin"
	max_text_id = 2
	_text_y = 800
	break
	
	case Room_main:
	
	break
	
	case Room_end:
	_backgrounds = [spr_background_cutscene3]
	_title = false
	_text_l = [1]
	_text_l[0] = "This is the end room"
	max_text_id = 1
	break
	
	default:
	_title = false
	
	break
}

_text_index = 1
_typing_speed = 1
_line_width = 1600
_line_index = 0

_text_x = 75

_text_displayed = ds_list_create()
ds_list_add(_text_displayed, "")
