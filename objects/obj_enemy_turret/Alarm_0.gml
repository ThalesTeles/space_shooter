instance_create_layer(x,y,"Instances_top", obj_enemy_bullet, 
{
	ship:id,
	speed : 15,
	direction : image_angle,
	image_angle : image_angle,
}
);

alarm[ALARM_SHOOT] = 120