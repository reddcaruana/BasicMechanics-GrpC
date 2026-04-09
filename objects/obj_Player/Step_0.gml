/// @description Move the player

hsp = keyboard_check(vk_right) - keyboard_check(vk_left);
vsp = clamp(vsp + gravity_force, -max_speed, max_speed);

// this gives back a true or false
var is_jumping = keyboard_check_pressed(vk_space);
if (is_jumping) // true
{
	vsp = jump_force;
}

// if the player reaches the bottom, move to the top
if (y > 512)
{
	y = -16;
}

// Vertical movement and collisions with walls

// Check if when we move, we hit a wall
if (place_meeting(x, y + vsp, obj_Wall))
{
 	var dir = sign(vsp); // 1 or -1
	while (!place_meeting(x, y + dir, obj_Wall))
	{
		y += dir;
	}
	vsp = 0; // we don't need to move anymore
}
y += vsp;

// Check if when we move, we hit a wall
if (place_meeting(x + hsp, y, obj_Wall))
{
 	var dir = sign(hsp); // 1 or -1
	while (!place_meeting(x + dir, y, obj_Wall))
	{
		x += dir;
	}
	hsp = 0; // we don't need to move anymore
}
x += hsp;