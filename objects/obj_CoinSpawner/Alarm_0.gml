/// @description Spawn a coin and wait

// Generate a number between 32 and 480
var point_y = random_range(32, 480);

// Generate a random coin
var coin = choose(obj_Coin, obj_SpecialCoin);

instance_create_layer(300, point_y, "Instances", coin);

alarm[0] = 45;