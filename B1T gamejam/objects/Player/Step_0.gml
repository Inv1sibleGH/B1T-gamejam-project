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
if (dist > stop_radius) {
    var step = min(current_speed, max(0, dist - stop_radius));
    var dx = lengthdir_x(step, dir);
    var dy = lengthdir_y(step, dir);

    var sx = sign(dx), sy = sign(dy);          // -1,0,1
    var px = abs(round(dx)), py = abs(round(dy)); // pixels to move on each axis

    // move along the larger axis first, then the other
    if (px >= py) {
        repeat (px) { if (!place_meeting(x + sx, y, wall)) x += sx; else break; }
        repeat (py) { if (!place_meeting(x, y + sy, wall)) y += sy; else break; }
    } else {
        repeat (py) { if (!place_meeting(x, y + sy, wall)) y += sy; else break; }
        repeat (px) { if (!place_meeting(x + sx, y, wall)) x += sx; else break; }
    }
} else {
    current_speed = 0;
}

// --- face left/right visually ---
vis_xscale = (mouse_x < x) ? 1 : -1;

// --- clamp tilt toward the cursor, ±tilt_limit ---
var facing_base = (vis_xscale == 1) ? 0 : 180;
var local = angle_difference(dir, facing_base);
var tilt  = clamp(local, -tilt_limit, tilt_limit);
vis_angle = lerp(vis_angle, -tilt, tilt_smooth);

// IMPORTANT: keep collision mask unrotated/unflipped
image_xscale = 1;
image_angle  = 0;