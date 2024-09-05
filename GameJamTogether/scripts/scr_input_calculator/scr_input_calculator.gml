/*
var margin = speed_x + sign(speed_x) * 5; // AI cheks if there is something in its place.
var is_above_player = false;

x_movement = 1;  // Allow for horizontal movement.
jump = 0;

var distance_sum_x = 2;
var distance_sum_y = 5;

if (!place_free(x+speed_x*0.5, y+1) && (place_free(x+margin, y)))
{
	if(obj_player.y < y) // Enemy is below the player.
	{
		var fit_left;
		var fit_right;
		scr_use_fit(fit_left, fit_right);
	}
	else if (obj_player.y > y) // Enemy is above the player.
	{
		is_above_player = true;
		var fit_left = scr_fall_sides(-distance_sum_x, distance_sum_y)
		var fit_right = scr_fall_sides(distance_sum_x, distance_sum_y)
		scr_use_fit(fit_left, fir_right);
	}
	else // Enemy is the same height as the player.
	{
		var go_left = (obj_player.x < x);
		
		if(go_left)
		{
			right = 0;
			left = -1;
		}
		else
		{
			right = 1;
			left = 0;
		}
	}
}

// Stop moving when touching the player
else if (scr_line_trace(obj_player) && abs(obj_player.x-x)<64)
{
	x_movement = 0;
}

if (!place_free(x, y+1) && place_free(x+speed_x, y+1) && obj_player.y <= y)
{
	jump = -1;
}
else if (!place_free(x+margin, y))
{
	jump = -1;
	x_movement = 0;
}