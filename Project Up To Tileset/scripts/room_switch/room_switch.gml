function room_switch(){
	var side;
	//determine which side to test
	if hsp > 0 side = bbox_right else side = bbox_left;
	
	//check the top and bottom of the side
	var t1 = tilemap_get_at_pixel(global.map, side + hsp, bbox_top);
	var t2 = tilemap_get_at_pixel(global.map, side + hsp, bbox_bottom);
	
	if t1 == DOOR or t2 == DOOR {
		//collision found
		room_restart()
		//room_next(1)
	}

	//vertical collision
	var side;
	//determine which side to test
	if vsp > 0 side = bbox_bottom else side = bbox_top;
	
	//check the left and right side
	var t1 = tilemap_get_at_pixel(global.map, bbox_left, side + vsp);
	var t2 = tilemap_get_at_pixel(global.map, bbox_right, side + vsp);
	
	if t1 == DOOR or t2 == DOOR {
		//collision found
		room_restart()
		//room_next(1)
	}
	
	y += vsp;
}