//movement
hsp=0;
max_hsp_initial=2;
max_hsp = max_hsp_initial;
vsp = 0;
spd=2;
jump_spd = -6;
hsp_decimal =0;
vsp_decimal=0;
facing=choose(-1,1);

//sates
enum animalcontrol_states {
	IDLE 
	}
	
state = animalcontrol_states.IDLE;

states_array[animalcontrol_states.IDLE] = animalcontrol_idle_state;

sprites_[animalcontrol_states.IDLE] = s_animalscontrol_idle;

