/// @description Spawn a coin and wait

// Generate a number between 32 and 480
var point_y = random_range(32, 480);

instance_create_layer(300, point_y, "Instances", obj_Coin);

alarm[0] = 45;