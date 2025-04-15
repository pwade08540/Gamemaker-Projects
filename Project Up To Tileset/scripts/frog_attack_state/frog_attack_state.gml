// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function frog_attack_state(){
//get inputs

//calculate movement

//modify state
//attack warning
if image_index = 2 and !inhale {
	inhale = true;
	alarm[INHALE] = inhale_timer;
	image_speed = 0

}

	if attack {
	//set tongue depth
	depth = layer_get_depth(layer_get_id("Player")) - 1;

	if image_index >= image_number - image_speed {
		state = frog_states.IDLE
		alarm[CAN_ATTACK] = attack_delay;
		depth = layer_get_depth(layer_get_id("Enemy"))  -1;
		inhale = false;
		attack = false;
	}
}
//apply movement
collision();

//anim
frog_anim();
}