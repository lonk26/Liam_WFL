/// Code if a shell directly hits its own shadow (did not hit player)

instance_destroy(other)
instance_destroy()
instance_create_layer(x,y,"instances_mid", obj_explosion)