/// Enemy dog create code

center_x = x
min_x = 0
max_x = 0

xprev = x

if center_x - 512 < 0 {
	min_x = 1
} else {
	min_x = center_x - 512	
}

if center_x + 512 > room_width {
	max_x = room_width - 1	
} else {
	max_x = center_x + 512	
}
