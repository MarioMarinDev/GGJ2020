/// scr_player_animation

if(yaxis > 0) {
	sprite_index = sprite_font;
} else if(yaxis < 0) {
	sprite_index = sprite_back;
}

image_speed = (len == 0) ? 0 : 0.5;

if(len == 0) {
	image_index = 0;
}
