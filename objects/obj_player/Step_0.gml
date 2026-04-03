var _right = (keyboard_check(vk_right) or keyboard_check(ord("D"))) ? 1 : 0;
var _left  = (keyboard_check(vk_left)  or keyboard_check(ord("A"))) ? 1 : 0;
var _down  = (keyboard_check(vk_down) or keyboard_check(ord("S"))) ? 1 : 0;
var _up   = (keyboard_check(vk_up)  or keyboard_check(ord("W")))  ? 1 : 0;

var _hInput = _right - _left;
var _vInput = _down - _up;

x += _hInput * acceleration;
y += _vInput * acceleration;

x = clamp(x, sprite_xoffset, room_width - sprite_xoffset);
y = clamp(y, sprite_yoffset, room_height - sprite_yoffset);

if (shootCooldown > 0){
	shootCooldown -= 1;
}

if (keyboard_check(ord("Z")) && shootCooldown <= 0){
	
	pitchVariation = random_range(0.8, 1.2);
	audio_sound_pitch(snd_ship_shoot, pitchVariation);
	audio_play_sound(snd_ship_shoot, 10, false);
	
	instance_create_layer(x,y, "Instances", obj_player_bullet,
	{
		damage: damage,
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

if (isInvincible) {
    if (current_time % 200 < 100) {
        image_alpha = 0.3; 
    } else {
        image_alpha = 1.0; 
    }
} else {
    image_alpha = 1.0;
}








