/// @description (type): Create a sound effect when mouse hover

switch(argument0) {
	case 0: audio_play_sound(snd_hover_in, 100, false); break;
	case 1: audio_play_sound(snd_hover_out, 100, false); break;
}