if(instance_exists(obj_player)){
	if(obj_player.attributePoints > 0){
		audio_play_sound(snd_upgrade_attribute, 13, false);
		with(obj_player){
			attributePoints -= 1;
			dexterityLevel += 1;
			fireRate = game_get_speed(gamespeed_fps) / (baseShootSecond + 0.5 * (dexterityLevel));
			if(acceleration < obj_player.maxAcceleration){
				acceleration = baseAccelaration + 0.5 * dexterityLevel;
			}
		}
	}
}