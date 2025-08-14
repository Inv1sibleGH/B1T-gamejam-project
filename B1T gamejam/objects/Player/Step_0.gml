dir = point_direction(x, y, mouse_x, mouse_y);
var dist = point_distance(x, y, mouse_x, mouse_y);
var speed_now = clamp(dist / 10, min_speed, max_speed);
if(dist>1){
	x += lengthdir_x(speed_now, dir);
	y += lengthdir_y(speed_now, dir);
}