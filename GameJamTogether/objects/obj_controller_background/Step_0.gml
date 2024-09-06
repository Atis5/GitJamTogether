/// @description Insert description here
// You can write your code in this editor


var closest = layer_get_id("closest_background");
var middle = layer_get_id("middle_background");
var distant = layer_get_id("distant_background");

layer_x(closest, lerp(0, camera_get_view_x(view_camera[0]), 0.5  ) );
layer_x(middle, lerp(0, camera_get_view_x(view_camera[0]), 0.7  ) );
layer_x(distant, lerp(0, camera_get_view_x(view_camera[0]), 0.85  ) );



/// Switching rooms and quitting the game
var switch_room = keyboard_check_pressed(vk_enter);
var quit_game = keyboard_check_pressed(vk_escape);

if(quit_game)
{
	game_end();
}

if(switch_room)
{
	if(room == Start)
	{
		room_goto(Intro);
	}
	else if(room == Intro)
	{
		room_goto(Room2);
	}
	else
	{
		room_goto(Start);
	}
}