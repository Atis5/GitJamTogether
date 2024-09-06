// Movement settings
speed_ = 6;
jump_speed = GRAVITY * 15;
climb_speed = 3;


// Movement checks
speed_x = 0;
speed_y = 0;
is_climbing = false;


// Variables for inputs
jump = 0;
left = 0;
right = 0;
climb_up = 0;
climb_down = 0;


// Array for enemy AI to reference
global.player_position = [[round(obj_player.x),round(obj_player.y),speed_]];
// player_position[0][0]; // first entry, first number ==> x
// player_position[0][1]; // first entry, first number ==> y
// player_position[0][2]; // first entry, first number ==> Player's speed
