instance_create_layer(x,y,"Instances_top", obj_enemy_bullet, 
{
	ship : id,
	speed : bulletSpeed,
	direction : image_angle,
	image_angle : image_angle,
	damage : damage,
});

alarm[ALARM_ENEMY_SHOOT] = shootTime