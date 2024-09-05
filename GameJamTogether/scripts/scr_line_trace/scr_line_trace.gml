/*
///@description scr_line_trace(obj)
///@function scr_line_trace
///@param obj

var t = argument0;

return !instance_exists(collision_line(x, y, t.x, t.y, obj_solid, false, true)); // Checks for solid objects between enemy and any object.