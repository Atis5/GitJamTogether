/*
/// @description scr_jump_sides(distance_sum)
/// @function scr_jump_sides
/// @param distance_sum

var distance_sum = argument0;
var distance = 0; // Counts until it reaches solid object


while (!place_meeting(x+distance, y, obj_solid) && place_meeting(x+distance, y+1, obj_solid)) // Checks for floor beneath the wall.
{
	if(abs(x+distance-room_width) > room_width) // Checks is distance goes beyond the room.
	{
		return -1;
	}
}

// Distance between calculated point and player's position
return point_distance(x+distance, y-jump_speed, obj_player.x, obj_player.y)