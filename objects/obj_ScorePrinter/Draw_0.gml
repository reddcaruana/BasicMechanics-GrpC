/// @description Draw the score on screen

draw_set_color(c_white); // change color to white

draw_text(x, y, "Score: " + string(score));
// string() converts a number to text