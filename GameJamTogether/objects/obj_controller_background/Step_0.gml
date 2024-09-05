/// @description Insert description here
// You can write your code in this editor


var closest = layer_get_id("closest_background");
var middle = layer_get_id("middle_background");
var distant = layer_get_id("distant_background");

layer_x(closest, lerp(0, camera_get_view_x(view_camera[0]), 0.5  ) );
layer_x(middle, lerp(0, camera_get_view_x(view_camera[0]), 0.7  ) );
layer_x(distant, lerp(0, camera_get_view_x(view_camera[0]), 0.85  ) );
