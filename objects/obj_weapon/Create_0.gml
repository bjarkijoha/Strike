weapon_pistol = {
	_sprite			: pistol,
	_gripPoint		: {x : 0, y : 0},
	_bullet_velocity: 65,
	_range			: 15,
	_fireRate		: 10
}

weapon_type = weapon_pistol;
shot_cooldown = 0;
sprite_index = weapon_type._sprite;
x+=weapon_type._gripPoint.x;
y+=weapon_type._gripPoint.y;
function draw_weapon_at(_x, _y, _angle){
	image_angle = _angle;
	x = _x;
	y = _y;
}