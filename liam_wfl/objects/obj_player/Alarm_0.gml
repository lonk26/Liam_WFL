/// Alarm 0 is for the search function
/// Once the timer counts down from 150 to 0 (five seconds), return the players state back to normal
/// and delete the rubble pile they were searching.

state = States.regular
instance_destroy(searchTarget)
