/// Break a dive

if state == 1 {
	state = crow_States.regular
} else {
	if h_direction == "right" {
		h_direction = "left"
	} else {
		h_direction = "right"	
	}
}

