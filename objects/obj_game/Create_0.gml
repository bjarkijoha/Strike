window_mouse_set_locked(true);
//spawnArea = {
//	_x1:0,
//	_x2:0,
//	_y1:0,
//	_y2:0,
//	_team:"",
//	create: function(_x1,_x2,_y1,_y2,_team){
//		self._x1 = _x1;
//		self._x2 = _x2;
//		self._y1 = _y1;
//		self._y2 = _y2;
//		self._team = _team;
//		return self;
//	},
//	isWithin: function(_x, _y){
		
//		var isWithin = _x>=self._x1	&& _x <= self._x2 && _y >= self._y1 && _y <= self._y2;
//		if(isWithin) show_debug_message("({0},{1}) is not within ({2},{3}) ({4},{5})", _x, _y, self._x1, self._x2, self._y1, self._y2);
//		else show_debug_message("({0},{1}) is within ({2},{3}) ({4},{5})", _x, _y, self._x1, self._y1, self._x2, self._y2);

//		return isWithin;
//	}
//}

//var redteamspwn = spawnArea.create(2663, 3008, 3587, 3750, "red");
//var blueteamspwn = spawnArea.create(1474, 1958, 773, 953, "blue");
//var redSpawnPoints = [];
//var blueSpawnPoints = [];

//for (var i = 0; i < instance_number(objSpawnPoint); ++i;)
//{
//	var tmpObj = instance_find(objSpawnPoint, i);
	
    
//	if(redteamspwn.isWithin(tmpObj.x, tmpObj.y)){
//		show_debug_message("({0},{1}) is a RED team spawn point", tmpObj.x, tmpObj.y);
//		array_push(redSpawnPoints, tmpObj);
//	}
//	else if(blueteamspwn.isWithin(tmpObj.x, tmpObj.y)){
//		show_debug_message("({0},{1}) is a BLUE team spawn point", tmpObj.x, tmpObj.y);
//		array_push(blueSpawnPoints, tmpObj);
//	}
//	else{
//		show_debug_message("({0},{1}) NOT WITHIN A SPAWN AREA", tmpObj.x, tmpObj.y);
//	}
//}
//show_debug_message("Found {0} red spawn points", array_length(redSpawnPoints));
//show_debug_message("Found {0} blue spawn points", array_length(blueSpawnPoints));

var blueSpawnPoints = [
					{x:1536,	y:768},
					{x:1504,	y:864},
					{x:1664,	y:896},
					{x:1760,	y:800},
					{x:1856,	y:896}
					];
					

var redSpawnPoints = [
					{x:2688,	y:3616},
					{x:2752,	y:3680},
					{x:2816,	y:3616},
					{x:2880,	y:3712},
					{x:2976,	y:3648}
					];

show_debug_message("BLUE:");
for(var i = 0; i < array_length(blueSpawnPoints); i++){
	var spwn = array_get(blueSpawnPoints, i);
	show_debug_message("({0},{1})", spwn.x, spwn.y);	
}
show_debug_message("RED:");
for(var i = 0; i < array_length(redSpawnPoints); i++){
	var spwn = array_get(redSpawnPoints, i);
	show_debug_message("({0},{1})", spwn.x, spwn.y);
	instance_create_layer(spwn.x, spwn.y, "Instances", obj_bot);
}
/*
(1536,768) NOT WITHIN A SPAWN AREA
(1504,864) is a RED team spawn point
(1664,896) is a RED team spawn point
(1760,800) is a RED team spawn point
(1856,896) is a RED team spawn point

(2688,3616) NOT WITHIN A SPAWN AREA
(2752,3680) NOT WITHIN A SPAWN AREA
(2816,3616) NOT WITHIN A SPAWN AREA
(2880,3712) NOT WITHIN A SPAWN AREA
(2976,3648) NOT WITHIN A SPAWN AREA


(1536,768) is within (1474,773) (1958,953)
(1536,768) is within (1474,773) (1958,953)
(1536,768) NOT WITHIN A SPAWN AREA
(1504,864) is not within (1474,1958) (773,953)
(1504,864) is a RED team spawn point
(1664,896) is not within (1474,1958) (773,953)
(1664,896) is a RED team spawn point
(1760,800) is not within (1474,1958) (773,953)
(1760,800) is a RED team spawn point
(1856,896) is not within (1474,1958) (773,953)
(1856,896) is a RED team spawn point
(2688,3616) is within (1474,773) (1958,953)
(2688,3616) is within (1474,773) (1958,953)
(2688,3616) NOT WITHIN A SPAWN AREA
(2752,3680) is within (1474,773) (1958,953)
(2752,3680) is within (1474,773) (1958,953)
(2752,3680) NOT WITHIN A SPAWN AREA
(2816,3616) is within (1474,773) (1958,953)
(2816,3616) is within (1474,773) (1958,953)
(2816,3616) NOT WITHIN A SPAWN AREA
(2880,3712) is within (1474,773) (1958,953)
(2880,3712) is within (1474,773) (1958,953)
(2880,3712) NOT WITHIN A SPAWN AREA
(2976,3648) is within (1474,773) (1958,953)
(2976,3648) is within (1474,773) (1958,953)
(2976,3648) NOT WITHIN A SPAWN AREA
Found 4 red spawn points
Found 0 blue spawn points

*/