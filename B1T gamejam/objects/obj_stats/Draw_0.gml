draw_set_font(game_font);
draw_set_halign(fa_left);

if(started){
	draw_set_colour(col_lighter);
	draw_roundrect_ext(0, 0, 133 * scale, string_height(time_string)  * scale + 3, 30, 30, false);
	draw_set_colour(col_darker);
	draw_text_transformed(2,3, time_string, scale, scale, 1);
}
