/// scr_npc_show_computer
/// @arg npc

// Arguments
var npc = argument0;

// Show computer
if(instance_exists(npc)) {
	if(instance_exists(npc.computer)) {
		with(npc.computer) {
			scr_computer_icon_arrange();
			active = true;
			audio_play_sound(snd_computer_on, 5, false);
		}
	}
}
