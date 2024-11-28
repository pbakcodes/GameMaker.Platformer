/// @description Insert description here
// You can write your code in this editor

var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

var _xinput = _right - _left;
var _yinput = _down - _up;

move_and_collide(_xinput * my_speed, _yinput * my_speed, obj_wall, 4, 0, 0, my_speed, my_speed);