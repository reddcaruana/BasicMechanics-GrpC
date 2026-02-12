/// @description Move the player

y += gravity_force;
gravity_force += 0.4;

// if the player reaches the bottom, move to the top
if (y > 512)
{
	y = -16;
}