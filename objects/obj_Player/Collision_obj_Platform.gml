/// @description Collision with platform

// Bounding Boxes
// in code, they start with bbox_

if (
	bbox_bottom < other.bbox_bottom
	and vsp >= 0
	and !keyboard_check(vk_down)
	)
{
	y = other.bbox_top - (bbox_bottom - y);
	vsp = 0;
}