
if bullet_travel_dist > bullet_range{
	speed = speed/8;
}

if(tile_meeting(x,y,"Wall")){
	effect_create_above(ef_explosion, x, y, 0, c_white);
	instance_destroy();
}