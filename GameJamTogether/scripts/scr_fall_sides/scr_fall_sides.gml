/*
///@description scr_fall_sides(distance_sum_x, distance_sum_y)
///@function scr_fall_sides
///@param distance_sum_x
///@param distance_sum_y

var distance_sum = argument0;
var distance_y = argument1;

var distance = 0;

while(place_meeting(x+distance, y+1, obj_solid))
{
	if(abs(x+distance-room_width)>room_width) // Checks is distance goes beyond the room.
	{
		return -1; 
	}
	distance += distance_sum;
}

var distance_sum_y = 1;


while (!place_meeting(x+distance+sign(distance)*5, y + distance_sum_y, obj_solid)) // Checks if there is not a floor while falling
{
	if(abs(y+distance_sum_y-room_height)>room_height) // Checks if counter is bigger than height of the room
	{
		return -1;
	}
	distance_sum_y += distance_y;
}

// Distance between calculated point and player's position
return point_distance(x+distance+sign(distance)*5, y+distance_sum_y, obj_player.x, obj_player.y)