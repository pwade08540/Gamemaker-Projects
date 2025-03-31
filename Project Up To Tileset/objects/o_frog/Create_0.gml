/// @description Insert description here
// You can write your code in this editor
hsp = 0;
max_hps_intital = 2;
max_hsp = max_hps_intital;
vsp = 0;
spd = 2 ; 
jump_spd = -6;
hsp_decimal = 0;
vsp_decimal = 0;
facing = choose(-1,1);

//breathing
breath_timer_intial = random_range(room_speed * 1.75, room_speed * 2.25);
breath_timer = breath_timer_intial;
image_speed = 0;

//states
enum frog_states {
	IDLE	
}

state = frog_states.IDLE;

states_array[frog_states.IDLE] = frog_idle_state;

sprites_array[frog_states.IDLE] = s_frog_idle;