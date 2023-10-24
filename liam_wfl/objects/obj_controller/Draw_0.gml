// Drawing Game over Text

if !instance_exists(obj_player) {
	draw_set_halign(fa_center)
	draw_set_font(fnt_gameover)
	var camera = view_camera[0]
	draw_text(camera_get_view_x(camera) + camera_get_view_width(camera) * 0.5, 
				camera_get_view_y(camera) + camera_get_view_height(camera) * 0.5, "Game Over! Press R to restart.")
}
