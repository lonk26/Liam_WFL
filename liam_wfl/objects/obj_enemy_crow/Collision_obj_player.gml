/// Interaction with player code

if other.attacking == true {
	instance_destroy()	
}

if other.dmg_cooldown == false and other.cht_invulnerable == false {
	other.player_health -= 1
	other.dmg_cooldown = true
	other.alarm[1] = 30
}

if other.player_health <= 0 {
	instance_destroy(other)	
}
state = crow_States.regular

