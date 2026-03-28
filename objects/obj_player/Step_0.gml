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


if keyboard_check_pressed(vk_space){
	instance_create_layer(x,y, "Instances", obj_player_bullet,
	{
		ship : id,
		speed : 30,
	});
}








