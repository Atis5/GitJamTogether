//   \/ INPUTS \/

jump = -keyboard_check_pressed(ord("W"));
right = keyboard_check(ord("D"));
left = -keyboard_check(ord("A"));



//   \/ MOVEMENT \/

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
y += speed_y


//   \/ GAME OVER \/

if(place_meeting(x, y, obj_enemy))
{
	room_goto(GameOver);
}