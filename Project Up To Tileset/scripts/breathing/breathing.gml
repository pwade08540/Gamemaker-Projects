// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function breathing(){
	if breath_timer < 0 {
		//start breath anim
		image_speed = 1;
	} else {
	breath_timer--;
	}
	if image_index >= image_number - image_speed {
		breath_timer = breath_timer_intial;
		//pause at the first frame
		image_index = 0;
		image_speed = 0;
	}
}