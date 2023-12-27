
function get_input(){
	left = keyboard_check(ord("A")) ? 1 : 0;
	right = keyboard_check(ord("D")) ? 1 : 0;
	fwd = keyboard_check(ord("W")) ? 1 : 0;
	bkwd = keyboard_check(ord("S")) ? 1 : 0;
	//mouseDeltaX = mouse_x - camera_get_view_x(view_camera[0]) - camera_get_view_width(view_camera[0]) / 2;
	mouseDeltaX = window_mouse_get_delta_x();
}

function apply_movement(){
	if mouseDeltaX != 0.01{
		image_angle -= mouseDeltaX * mouse_sense;
	}
	
	var _vertical_move = walk_spd * (fwd-bkwd);
	var _horizontal_move = walk_spd * (right - left);



	
	var _c = dcos( image_angle ), _s = dsin( image_angle );
    var _targethspeed =  _c * _vertical_move + _s * _horizontal_move;
    var _targetvspeed = -_s * _vertical_move + _c * _horizontal_move;
	var _tx = x+_targethspeed;
	var _ty = y-_targetvspeed;
	if (tile_meeting(_tx, _ty, "Wall")){
		show_debug_message("Collision at ({0}, {1})", _tx, _ty);
	}
	if(xprevious != x){
		show_debug_message("x: {0}", x);
	}
	if(xprevious != x){
		show_debug_message("x: {0}", x);
		show_debug_message("xprevious: {0}", xprevious);
	}
	if(yprevious != y){
		show_debug_message("y: {0}", y);
		show_debug_message("yprevious: {0}", yprevious);
	}
	//if (tile_meeting(_tx, _ty, "Wall")){
	//	show_debug_message("Collision at ({0}, {1})", _tx, _ty);
	//	if(_targethspeed!=0 || _targetvspeed!=0) setAdjustedSpeed(_targethspeed, _targetvspeed);
	//}
	//else{
	//	hspeed = _targethspeed;
	//	vspeed = _targetvspeed;
	//}
}

function setAdjustedSpeed(_targeth, _targetv){
	show_debug_message("SetAdjusted for {0},{1}:",_targeth, _targetv);
	var _h = _targeth;
	var _v = _targetv;
	while(abs(_h>=1 || abs(_v)>=1)){
		var _tx = x+_h;
		var _ty = y+_v;
		if(tile_meeting(_tx, _ty, "Wall")){
			show_debug_message("Collision at ({0}, {1}) for hspeed {2}, vspeed {3}", _tx, _ty,_h,_v);
			if(_h<0) _h++;
			else _h--;
			if(_v<0) _v++;
			else _v--;
		}
	}
	if(abs(_h)<1) _h = 0;
	if(abs(_v)<1) _v = 0;
	show_debug_message("Setting hspeed: {0}, vspeed: {1}", _h, _v);
	hspeed = _h;
	vspeed = _v;
}

function move_weapon(){
	_gripPoint = get_grip_point(grip_offset);
	weapon.draw_weapon_at(x + _gripPoint.x, y + _gripPoint.y, image_angle);
}

function get_grip_point(_len){
	_x = lengthdir_x(_len, image_angle);
	_y = lengthdir_y(_len, image_angle);
	return {x:_x, y:_y};
}