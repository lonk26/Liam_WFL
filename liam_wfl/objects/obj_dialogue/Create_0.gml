// Define the dialog
text_id = 0
background_id = 0

/// Switch statement for defining relevant variables and settings based on the room the dialog object is
/// placed into. Must be set in advance for runtime
switch room {
	
	case Room_start:
	_title = true
	_backgrounds = [spr_background_cutscene1, spr_background_cutscene2]
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
	_text_l[0] = "In a climactic moment, Liam finally encountered his owner, Tim, who was in a critical state. " +
				"Summoning every ounce of energy left after the arduous journey, Liam transported Tim back to " +
				"headquarters, seeking desperately needed aid. Throughout Tim's recovery, Liam remained a constant " +
				"and unwavering presence by his side. Following the end of the war, the duo returned to their " +
				"cherished old home, where they resumed their normal, day-to-day life together. Press Esc to exit"
	max_text_id = 1
	_text_y = 25
	break
	
	default:
	_title = false
	
	break
}

/// Generic variable declaration (same between all rooms)
_text_index = 1
_typing_speed = 1
_line_width = 1600
_line_index = 0

_text_x = 75

_text_displayed = ds_list_create()
ds_list_add(_text_displayed, "")
