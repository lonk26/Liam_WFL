/// @description Insert description here
// You can write your code in this editor

other.player_health -= 1

if other.player_health <= 0 {
	instance_destroy(other)	
}
state = crow_States.regular

