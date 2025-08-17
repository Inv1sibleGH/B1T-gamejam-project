image_xsizeratio = 1;
image_ysizeratio = 1;

image_xscale *= image_xsizeratio;
image_yscale *= image_ysizeratio;
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
//image_xscale = 1;
image_angle  = 0;

// Visual-only transforms
vis_xscale = 1;   // -1 or 1
vis_angle  = 0;   // degrees


var p = instance_find(Player, 0);
firstx = p.x *0.75;
firsty = p.y *0.75;
//I have no idea why this works like this but I'm not touching it again it's 4am
if (p != noone) window_mouse_set(firstx, firsty);
mouse_locked = true;
alarm[0] = round(0.5 * game_get_speed(gamespeed_fps));