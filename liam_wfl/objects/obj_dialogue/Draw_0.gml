/// Draw the text


/// Credit to chatGPT for assisting me in the logic of the text border implementation
var _border_size = 4

if background_id <= array_length(_backgrounds) - 1 {
	draw_sprite(_backgrounds[background_id], 0, 0, 0)
}

if _title == true {
	draw_set_font(fnt_title);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_colour(c_white);
	for (var i = -_border_size; i <= _border_size; i++) {
		for (var j = -_border_size; j <= _border_size; j++) {
			if (i != 0 || j != 0) {
				draw_set_colour(c_black);
				draw_text(400 + i, 100 + j, "Liam: Waiting for Love")	;
			}
		}
	}
	draw_set_colour(c_white);
	draw_text(400, 100, "Liam: Waiting for Love")
	if background_id > array_length(_backgrounds) - 1 {
		draw_set_halign(fa_left)
		draw_set_color(c_red)
		draw_text(600, 600, "Instructions:")	
	}
}

draw_set_font(fnt_dialog);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);

for (var f=0; f<ds_list_size(_text_displayed); f++) {
	for (var i = -_border_size; i <= _border_size; i++) {
		for (var j = -_border_size; j <= _border_size; j++) {
			if (i != 0 || j != 0) {
				draw_set_colour(c_black);
				draw_text(_text_x + i, _text_y + j + 50 * f, _text_displayed[| f]);
				draw_set_color(c_white)
				draw_text(_text_x, _text_y + 50 * f, _text_displayed[| f])
			}
		}
	}
}
