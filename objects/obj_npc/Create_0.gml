/// @desc: NPC Variables

// Properties variables
type = npc_types.employee;
state = scr_npc_state_thinking;
activity = NULL;
spd = 2;
workplace = noone;

// Activities variables
desperate_time = time_minutes(1.5);
idle_min = time_seconds(1);
idle_max = time_seconds(3);

// Path variables
grid = NULL;
path = path_add();
x_start = x;
y_start = y;
x_to = x;
y_to = y;

// Draw variables
dim_spd = 1 / time_seconds(0.5);