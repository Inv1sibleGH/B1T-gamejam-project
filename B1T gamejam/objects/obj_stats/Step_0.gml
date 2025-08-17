
if(started)
{
	game_time += delta_time * 0.001;
	current_milliseconds = game_time mod 1000;
	total_seconds = game_time div 1000;
	current_seconds = total_seconds mod 60;
	current_minutes = total_seconds div 60;
	hours = current_seconds div 3600;
	time_string = string_concat(hours, ":", current_minutes, ":", current_seconds, ",", current_milliseconds);
	//time_string = hours + ":" + current_minutes + ":" + current_seconds + "." + current_milliseconds;
}

if(ended)
{
	best_time = max(best_time, current_milliseconds);
	started = false;
	ended = false;
	current_milliseconds = 0;
	total_seconds = 0;
	current_seconds = 0;
	current_minutes = 0;
	hours = 0
}