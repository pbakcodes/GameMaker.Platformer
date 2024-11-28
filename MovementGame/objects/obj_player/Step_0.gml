/// @description Insert description here
// You can write your code in this editor
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x = move_x * move_speed;

if place_meeting(x, y+2, obj_ground)
{
	move_y = 0;
	
	if (!place_meeting(x+move_x, y+2, obj_ground) && place_meeting(x+move_x, y+10, obj_ground))
	{
		move_y = abs(move_x);
		move_x = 0;
	}

	if keyboard_check(vk_space)
		move_y = -jump_speed;
}
else 
{
	if move_y < 10
		move_y += 1;
}

move_and_collide(move_x, move_y, obj_ground, 4, 0, 0, move_speed, -1);

if move_x != 0 
{
	image_xscale = sign(move_x)
}