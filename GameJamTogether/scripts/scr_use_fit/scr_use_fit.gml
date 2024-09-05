/*
/// @description scr_use_fit(fit_left, fit_right)
/// @function scr_use_fit
/// @param fit_left
/// @param fit_right

var fit_left = argument0;
var fit_right = argument1;

var fit_sum = fit_left + fit_right;

if (fit_sum == -2) // Both wrong
{
	var go_left = (obj_player.x < x);
	
	if (go_left)
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
else if (fit_left == -1 || fit_right == -1)
{
	if (fit_left == -1)
	{
		right = 1;
		left = 0;
	}
	else if (fit_right == -1)
	{
		left = -1;
		right = 0;
	}
}
else
{
	var go_left = (fit_left < fit_right)
	
	if(go_left)
	{
		left = -1;
		right = 0;
	}
	else
	{
		right = 1;
		left = 0;
	}
}