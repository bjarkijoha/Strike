health = 100;

function hit(_velocity){
	health -= _velocity;
	if health <= 0{
		instance_destroy();
	}
}