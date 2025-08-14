dir = point_direction(x, y, mouse_x, mouse_y);
var dist = point_distance(x, y, mouse_x, mouse_y);

//slowdown zone
var slowdown_zone = stop_radius + 15;

var target_speed = clamp(dist / 10, min_speed, max_speed);
if (dist < slowdown_zone) {
    var slow_factor = sqr(dist / slowdown_zone); // ^2 = steeper slowdown near cursor
    target_speed *= slow_factor;
}

//makes movement more linear without being snappy at the start
if (current_speed < target_speed) {
    current_speed = min(current_speed + accel, target_speed);
} else if (current_speed > target_speed) {
    current_speed = max(current_speed - accel, target_speed);
}

//move without jitter at the end
if(dist>stop_radius){
	var move_step = min(current_speed, max(0, dist - stop_radius));
	x += lengthdir_x(move_step, dir);
	y += lengthdir_y(move_step, dir);
} else {
    current_speed = 0;
}

// Flip bee to face cursor
if (mouse_x < x) {
    image_xscale = -1; // face left
	left_right_fix = 10;
} else {
    image_xscale = 1;  // face right
	left_right_fix = -10;
}

var facing_base = (image_xscale == 1) ? 0 : 180;
var local_angle = angle_difference(dir, facing_base);
var tilt        = clamp(local_angle, -tilt_limit, tilt_limit);
image_angle     = lerp(image_angle, tilt, tilt_smooth) + left_right_fix;
