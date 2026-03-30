speed = 3
image_angle = 180;
direction = obj_enemy_ship.image_angle;

torreta = instance_create_layer(x,y,"Instances_Top", obj_enemy_turret,
{
	direction : image_angle,
	speed : speed,
	motherShip: id,
	image_xscale : 0.75,
	image_yscale: 0.75,
});
