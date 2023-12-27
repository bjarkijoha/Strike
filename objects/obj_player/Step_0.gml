get_input();
apply_movement();
move_weapon();

window_mouse_set(window_get_width()/2, window_get_height()/2);

camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0]) / 2, y - camera_get_view_height(view_camera[0]) / 2);
var _setCamAngle = 90 - image_angle;
camera_set_view_angle(view_camera[0], _setCamAngle);
