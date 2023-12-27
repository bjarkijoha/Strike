if mouse_check_button(mb_left){
	if shot_cooldown == 0{
		shoot();
		shot_cooldown = weapon_type._fireRate;
	}
	else{
		shot_cooldown--;
	}
}