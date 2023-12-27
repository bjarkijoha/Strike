function shoot(){
	_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	_bullet.go(weapon_type._bullet_velocity, image_angle, weapon_type._range);
}