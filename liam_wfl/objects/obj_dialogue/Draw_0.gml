/// Draw the text

draw_set_font(fnt_dialog);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);

for (i=0; i<ds_list_size(_text_displayed); i++) {
	draw_text(_text_x, _text_y + 70 * i, _text_displayed[| i])
}
