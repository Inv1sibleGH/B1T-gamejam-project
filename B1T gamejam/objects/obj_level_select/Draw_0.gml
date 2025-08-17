// Inherit the parent event
event_inherited();
draw_set_font(game_font);
draw_set_halign(fa_center);

if(mouse_enter) draw_set_color(col_lighter);
else draw_set_color(col_darker);

draw_text(x, y, level_number);


