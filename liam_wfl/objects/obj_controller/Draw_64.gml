/// Draws Player Health and other elements

if instance_exists(obj_player) { 
	for (var i = 0; i < obj_player.player_health; i++) {
		draw_sprite(spr_health, 0, (50+32*i), 32)
	}
}

if !instance_exists(obj_player) {
	draw_set_halign(fa_center)
	draw_text(room_width / 2, room_height / 2, "Game Over! Press R to restart.")
}