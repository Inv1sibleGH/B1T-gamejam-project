col_darker = make_colour_rgb(36, 48, 7);
col_lighter = make_colour_rgb(168, 230, 29);
mouse_enter = false;
curr_level = string_concat("LVL",level_number);
lvl_room = asset_get_index(curr_level);

show_debug_message(lvl_room);