if keyboard_check(vk_up) {
	y -=  acceleration;	
}

if keyboard_check(vk_down) {
	y += acceleration;
}

if keyboard_check(vk_left) {
	x -= acceleration;
}

if keyboard_check(vk_right) {
	x += acceleration;
}

x = clamp(x, sprite_xoffset, room_width - sprite_xoffset);
y = clamp(y, sprite_yoffset, room_height - sprite_yoffset);

if (shootCooldown > 0){
	shootCooldown -= 1;
}

if (keyboard_check(vk_space) && shootCooldown <= 0){
	instance_create_layer(x,y, "Instances", obj_player_bullet,
	{
		damage: damage + strengthLevel * 5,
		criticalRate: criticalRate,
		speed : 30,
	});
	
	shootCooldown = fireRate;
}

if(hp < hpMax){
	hp+= hpRestorationRate;
	if(hp > hpMax){
		hp = hpMax;	
	}
}








