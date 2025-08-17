draw_set_font(game_font);
draw_set_halign(fa_left);

if(started){
	draw_set_colour(col_lighter);
	draw_roundrect_ext(0, 0, 133 * 2.3, 20  * 2.3 + 5, 30, 30, false);
	draw_set_colour(col_darker);
	draw_text_transformed(2,3, time_to_string(game_time), 2.3, 2.3, 1);
}

if(show_stats){
	draw_set_halign(fa_center);
	draw_set_colour(col_darker);
	draw_text_transformed(room_width / 2, 105, "YOU DID IT!", 3.5, 3.5, 1);
	draw_text_transformed(room_width / 2, 220, "final time: " + time_to_string(game_time), 1.5, 1.5, 1);
	draw_text_transformed(room_width / 2, 270, "best time: " + time_to_string(best_time), 1.5, 1.5, 1);
	draw_text_transformed(room_width / 2, 320, string_concat("total number of deaths: ", num_of_deaths), 1.5, 1.5,1);
}
