/// @description Move the player

y += gravity_force;
gravity_force += 0.4;

// this gives back a true or false
var is_jumping = keyboard_check_pressed(vk_space);
if (is_jumping) // true
{
	gravity_force = jump_force;
}

// if the player reaches the bottom, move to the top
if (y > 512)
{
	y = -16;
}