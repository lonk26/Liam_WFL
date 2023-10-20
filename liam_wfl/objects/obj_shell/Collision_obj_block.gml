/// Destroy shell prematurely

instance_destroy()

/// Find the nearest shell shadow object (shadow associated with this shell)
var prev_distance = 99999
var destroyID = noone

with obj_shell_shadow {
	var distance = point_distance(x,y,other.x,other.y)
	if distance < prev_distance {
		prev_distance = distance	
		destroyID = id
	}
}

/// Destroy associated shell shadow and remove 1 from player health
instance_destroy(destroyID)

instance_create_layer(x,y,"instances_mid", obj_explosion)