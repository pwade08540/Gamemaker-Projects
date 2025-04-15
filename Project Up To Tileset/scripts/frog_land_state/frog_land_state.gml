// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function frog_land_state(){
//get inputs

//calculate movement

//modify state
if image_index >= image_number - image_speed {
	state = frog_states.IDLE;
	image_index = 0;
	image_speed = 0;
}


//apply movement
collision();

//anim
frog_anim();
}