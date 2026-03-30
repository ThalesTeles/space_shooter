if(instance_exists(obj_player)){
	if(obj_player.attributePoints > 0){
		audio_play_sound(snd_upgrade_attribute, 13, false);
		with(obj_player){
			attributePoints -= 1;
			hpMax += 5
			hp = hpMax
			hpRestorationRate += 0.00166
			defenseLevel += 1;
			}
	}
}