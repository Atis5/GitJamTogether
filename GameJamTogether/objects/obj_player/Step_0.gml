//   \/ INPUTS \/

jump = -keyboard_check_pressed(vk_space);
right = keyboard_check(ord("D"));
left = -keyboard_check(ord("A"));
climb_up = keyboard_check(ord("W"));
climb_down = keyboard_check(ord("S"));



//   \/ MOVEMENT \/

// Calculate movement
speed_x = (right+left) * speed_;

// Apply gravity whem player is not jumping.
if(speed_y < jump_speed)
{
	speed_y += GRAVITY;
}

// Allow jumping if there is an object underneath the player.
if (!place_free(x, y+1))
{
	speed_y = jump * jump_speed;
}

// Allow climbing
if (place_meeting(x, y, obj_climbable)) && (climb_up || climb_down != 0)
{
	speed_y = (climb_up-climb_down) * -climb_speed;
	is_climbing = true;
}
else
{
	is_climbing = false;
}



//   \/ COLLISIONS \/

// Vertical
if(place_meeting(x, y+speed_y, obj_solid))
{
	while(!place_meeting(x, y+sign(speed_y), obj_solid))
	{
		y += sign(speed_y)
	}
	speed_y = 0;
}

// Horizontal
if(place_meeting(x+speed_x, y, obj_solid))
{
	while(!place_meeting(x+sign(speed_x), y, obj_solid))
	{
		x += sign(speed_x)
	}
	speed_x = 0;
}

x += speed_x;
y += speed_y;



//   \/ SPRITES \/

// Mirror sprite towards running direction
 image_xscale = sign(speed_x+0.1)*2;
 
 // Use the correct sprite

if (is_climbing == true)
 {
	 sprite_index = spr_player_climb;
 }
 else if (speed_x != 0)
 {
	 sprite_index = spr_player_run;
 }
 else
 {
	 sprite_index = spr_player_idle;
 }
 
 

//   \/ GAME OVER \/

if(place_meeting(x, y, obj_enemy))
{
	audio_stop_all();
	room_goto(GameOver);
}