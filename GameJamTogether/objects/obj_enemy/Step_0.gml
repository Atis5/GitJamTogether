if (should_follow)
{
	// Move  towards previous player position
	x = global.player_position[player_position_index][0];
	y = global.player_position[player_position_index][1];
	
	// Apply sprites
	if (place_meeting(x, y, obj_climbable))
	{
		sprite_index = spr_girl_climb;
	}
	else
	{
		sprite_index = spr_girl_run;
	}
	
	//move_towards_point(global.player_position[player_position_index][0], global.player_position[player_position_index][1], global.player_position[player_position_index][2]);
	player_position_index++;
}


