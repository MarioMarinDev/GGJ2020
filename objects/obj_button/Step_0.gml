/// @desc: Button Control

if(collision_point(mouse_x, mouse_y, id, false, false)) {
	hover = true;
} else {
	hover = false;
}

if(hover && mouse_check_button_pressed(mb_left)) {
	pressed = true;
	audio_play_sound(snd_select, 5, false);
} else {
	pressed = false;
}