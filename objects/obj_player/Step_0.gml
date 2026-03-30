var _right = keyboard_check(vk_right) ? 1 : 0;
var _left  = keyboard_check(vk_left)  ? 1 : 0;
var _down  = keyboard_check(vk_down)  ? 1 : 0;
var _up    = keyboard_check(vk_up)    ? 1 : 0;

var _hInput = _right - _left;
var _vInput = _down - _up;

x += _hInput * acceleration;
y += _vInput * acceleration;

x = clamp(x, sprite_xoffset, room_width - sprite_xoffset);
y = clamp(y, sprite_yoffset, room_height - sprite_yoffset);

if (shootCooldown > 0){
	shootCooldown -= 1;
}

if (keyboard_check(vk_space) && shootCooldown <= 0){
	
	pitchVariation = random_range(0.8, 1.2);
	audio_sound_pitch(snd_ship_shoot, pitchVariation);
	audio_play_sound(snd_ship_shoot, 10, false);
	
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








