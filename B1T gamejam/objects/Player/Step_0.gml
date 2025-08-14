move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;

if(y > room_height) y = 1;
if(x > room_width) x = 1;
else if( x < 0) x = room_width - 1;

if (place_meeting(x, y+2, Flower))
{
	move_y = 0;
	if (keyboard_check(vk_space)) move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;

move_and_collide(move_x, move_y, Flower);

//if (move_x != 0) image_xscale = sign(move_x);