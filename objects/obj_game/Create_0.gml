window_mouse_set_locked(true);
spawnArea = {
	_x1:0,
	_x2:0,
	_y1:0,
	_y2:0,
	_team:"",
	create: function(_x1,_x2,_y1,_y2,_team){
		self._x1 = _x1;
		self._x2 = _x2;
		self._y1 = _y1;
		self._y2 = _y2;
		self._team = _team;
		return self;
	},
	isWithin: function(_x, _y){
		return _x>=self._x1	&& _x <= self._x2 && _y >= self._y1 && _y <= self._y2;
	}
}

var blueSpawnPoints = [];
for (var i = 0; i < instance_number(objSpawnPoint); ++i;)
{
    blueSpawnPoints[i] = instance_find(objSpawnPoint,i);
}
show_debug_message("Found {0} elements", array_length(blueSpawnPoints));


for(var _i = 0; _i<array_length(blueSpawnPoints); _i++){
	show_debug_message("SpawnPoint {0}: {1}", _i, array_get(blueSpawnPoints,_i));
	show_debug_message("SpawnPoint {0}: ({1},{2})", _i, array_get(blueSpawnPoints, _i).x,array_get(blueSpawnPoints, _i).y);
	instance_create_layer(array_get(blueSpawnPoints, _i).x, array_get(blueSpawnPoints, _i).y, "Instances", obj_bot);
	//show_debug_message("SpawnPoint @ ({0},{1})", spawnPoints[i].x, spawnPoints[i].x);
}
spawnPoint = {
	_xPos:0,
	_yPos:0,
	_occupied: false,
	create: function(xPos, yPos){
		self._xPos = xPos;
		self._yPos = yPos;
		return self;
	},
	occupy: function(obj){
		show_debug_message("Occupying a spawn point at ({0},{1})", self._xPos, self._yPos);
		instance_create_layer(self._xPos, self._yPos,"Instances",obj);
		self._occupied = true;
	}
}