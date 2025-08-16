if( place_meeting(x, y, wall) ){
	dir = -dir;
	if(dir_x) image_xscale *= (-1 * abs(dir_x));
}

if(x > room_width || x < 0){
	dir = sign(x);
	if(dir_x) image_xscale *= (-1 * abs(dir_x));
}
if(y > room_height || y < 0){						//usually sign() would be the same for both x and y but i flipped the sprite so x is opposite now
	dir = -sign(y);
	if(dir_x) image_xscale *= (-1 * abs(dir_x));
}
x -= max_speed * dir * dir_x; 
y += max_speed * dir * dir_y;

show_debug_message(dir);