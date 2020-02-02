/// scr_dev_info

draw_set_font(fnt_dev);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

draw_rectangle_dim(0, 0, room_width, dev_y_max, c_black, 0.8);

var xx = 5;
var yy = 5;
var ys = string_height(" ");

// Main information
draw_text(xx, yy, string(fps) + " DEVELOPER MODE (" + room_get_name(room) + ")"); yy += ys;
draw_text(xx, yy, "Instances: " + string(instance_count)); yy += ys;

// Transition information
if(instance_exists(obj_transition)) {
	var state = "Unknown";
	switch(obj_transition.state) {
		case transition_states.fade_in: state = "fade-in"; break;
		case transition_states.fade_out: state = "fade-out"; break;
		case transition_states.transport: state = "transport"; break;
		case transition_states.dispose: state = "dispose"; break;
	}
	draw_text(xx, yy, "Transition in progress (" + state + ")..."); yy += ys;
}

// Room controller information
if(instance_exists(room_controller)) {
	draw_text(xx, yy, "RoomController active: " + script_get_name(room_controller.script)); yy += ys;
} else {
	draw_text(xx, yy, "No RoomController active."); yy += ys;
}

// Game State
var state = "Unknown";
switch(global.game_state) {
	case game_states.unready: state = "un-ready"; break;
	case game_states.preready: state = "pre-ready"; break;
	case game_states.ready: state = "ready"; break;
	case game_states.postready: state = "post-ready"; break;
}
draw_text(xx, yy, "GameState: " + state); yy += ys;

dev_y_max = yy;