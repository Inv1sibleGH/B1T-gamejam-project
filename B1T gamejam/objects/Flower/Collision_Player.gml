if(place_meeting(x,y, Player) && touch_cooldown <= 0){
	touch_cooldown = 60;
	sprite_index = spr_flower_animation;
	if(starting_sprite || opened_once_before){
	image_speed = 1;
	dead = true;
	}
	else{
		image_index = image_number - 1;
		image_speed = -1;
		opened_once_before = 1;
	}
}
