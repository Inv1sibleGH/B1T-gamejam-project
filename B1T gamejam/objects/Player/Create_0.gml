min_speed = 0;  
max_speed = 30;
dir = 0;

current_speed = 0;
accel = 2.0;
stop_radius = 2;

tilt_limit  = 25;   
tilt_smooth = 0.25;
left_right_fix = -15;

// Keep collisions stable
mask_index   = spr_bee;   // a simple circle/box mask
image_xscale = 1;
image_angle  = 0;

// Visual-only transforms
vis_xscale = 1;   // -1 or 1
vis_angle  = 0;   // degrees