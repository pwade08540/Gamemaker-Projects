function player_idle_state(){
	//get input
	get_input();

	//calculate movement
	calc_movement();

	//check state
	if hsp != 0 {
		
		state = states.WALK;
		audio_play_sound(meow_cat,10,false,1,,);
	}
	if attack {
		state = states.ATTACK;
		image_index = 0;
		audio_play_sound(angry_cat_meow,10,false,1,,);
	}
	
	if jump {
		jumped();
	}
	
	if block {
		state = states.BLOCK;
		hsp = 0;
	}
	
	if down {
		state = states.CROUCH;
		hsp = 0;
	}
	if jewelry {
		state = states.RUN;
		audio_play_sound(magical_fairy_sparkles,10,false,1,,);
	}
	
	//apply movement
	collision();

	//apply animations
	anim();
}