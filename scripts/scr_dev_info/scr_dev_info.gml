/// scr_dev_info

draw_set_font(fnt_dev);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

draw_rectangle_dim(0, 0, room_width, dev_y_max, c_black, 0.8);

var xx = 5;
var yy = 5;
var ys = string_height(" ");
var separator = "============================================";

// Main information
draw_text(xx, yy, string(fps) + " DEVELOPER MODE (" + room_get_name(room) + ")"); yy += ys;
draw_text(xx, yy, "Instances: " + string(instance_count)); yy += ys;

// Transition information
if(instance_exists(obj_transition)) {
	var state = "unknown";
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

// GameState information
var state = "unknown";
switch(global.game_state) {
	case game_states.unready: state = "un-ready"; break;
	case game_states.preready: state = "pre-ready"; break;
	case game_states.ready: state = "ready"; break;
	case game_states.postready: state = "post-ready"; break;
}
draw_text(xx, yy, "GameState: " + state); yy += ys;

// Selected instance information
if(instance_exists(global.dev_instance)) {
	var obj = global.dev_instance;
	draw_text(xx, yy, separator); yy += ys;
	switch(obj.object_index) {
		case obj_player:
			draw_text(xx, yy, "obj_player (" + string(obj.id) + ")"); yy += ys;
			draw_text(xx, yy, "state: " + script_get_name(obj.state)); yy += ys;
			if(instance_exists(obj.interactable)) {
				draw_text(xx, yy, "Interactable: " + string(obj.interactable.id)); yy += ys;
			}
		break;
		
		case obj_npc:
			draw_text(xx, yy, "obj_npc (" + string(obj.id) + ")"); yy += ys;
			var type = "unknown";
			switch(obj.type) {
				case npc_types.employee: type = "employee"; break;
				case npc_types.janitor: type = "janitor"; break;
			}
			draw_text(xx, yy, "Type: " + type); yy += ys;
			draw_text(xx, yy, "state: " + script_get_name(obj.state)); yy += ys;
			if(script_exists(obj.activity)) {
				draw_text(xx, yy, "activity: " + script_get_name(obj.activity)); yy += ys;
			}
			if(obj.alarm[1] > 0) {
				draw_text(xx, yy, "Desperate: " + string(obj.alarm[1] * 100 / obj.desperate_time)); yy += ys;
			}
		break;
	}
}

dev_y_max = yy;