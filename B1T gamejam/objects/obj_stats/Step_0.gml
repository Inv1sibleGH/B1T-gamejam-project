
if(started)
{
	game_time += delta_time * 0.001;
	current_milliseconds = round(game_time mod 1000);
	total_seconds = game_time div 1000;
	
	current_seconds = total_seconds mod 60;
	seconds_string = (current_seconds < 10) ? string_concat("0", current_seconds) : string_concat(current_seconds);
	
	current_minutes = total_seconds div 60;
	minutes_string = (current_minutes < 10) ? string_concat("0", current_minutes) : string_concat(current_minutes);
	
	hours = current_seconds div 3600;
	hours_string = (hours < 10) ? string_concat("0", hours) : string_concat(hours);
	
	time_string = string_concat(hours_string, ":", minutes_string, ":", seconds_string, ",", current_milliseconds);
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