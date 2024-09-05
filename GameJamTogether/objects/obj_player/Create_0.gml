speed_ = 6;

speed_x = 0;
speed_y = 0;
jump_speed = GRAVITY * 15;

jump = 0;
left = 0;
right = 0;

global.player_position = [[round(obj_player.x),round(obj_player.y),speed_]];
// player_position[0][0]; // first entry, first number ==> x
// player_position[0][1]; // first entry, first number ==> y
// player_position[0][2]; // first entry, first number ==> Player's speed