acc = 10;

if keyboard_check(vk_up) {
	y -=  acc;	
}

if keyboard_check(vk_down) {
	y += acc;
}

if keyboard_check(vk_left) {
	x -= acc;
}

if keyboard_check(vk_right) {
	x += acc;
}

x = clamp(x, sprite_xoffset, room_width - sprite_xoffset);
y = clamp(y, sprite_yoffset, room_height - sprite_yoffset);


if keyboard_check_pressed(vk_space){
	instance_create_layer(x,y, "Instances", obj_bullet)	
}








