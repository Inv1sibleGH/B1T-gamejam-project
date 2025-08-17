if(room == room_ending) ended = true;
if(started)
{
	game_time += delta_time * 0.001;
	time_to_string(game_time);
}

if(ended)
{
	best_time = min(best_time, game_time);
	started = false;
	ended = false;
	show_stats = true;
	hours = 0
}