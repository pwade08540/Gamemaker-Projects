function jump_dust(){
	var inst = instance_create_layer(x, y, "Dust", o_player_dust_jump);
	audio_play_sound(jumpp,10,false,1,,);
	inst.image_xscale = facing;
}