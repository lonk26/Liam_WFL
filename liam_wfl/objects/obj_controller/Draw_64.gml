/// Draws Player Health and other elements

if instance_exists(obj_player) { 
	for (var i = 0; i < obj_player.player_health; i++) {
		draw_sprite(spr_health, 0, (50+32*i), 32)
	}
}

